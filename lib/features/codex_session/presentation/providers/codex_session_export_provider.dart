import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shim/core/services/app_log_service.dart';
import 'package:shim/core/services/bridge_service.dart';
import 'package:shim/features/codex_session/data/datasources/codex_session_export_datasource.dart';
import 'package:shim/core/utils/codex_session_export_formatter.dart';
import 'package:shim/features/codex_session/data/repositories/codex_session_export_repository_impl.dart';
import 'package:shim/features/codex_session/domain/models/codex_thread_detail.dart';
import 'package:shim/features/codex_session/domain/repositories/codex_session_export_repository.dart';

part 'codex_session_export_provider.g.dart';

@riverpod
CodexSessionExportRepository codexSessionExportRepository(Ref ref) {
  return CodexSessionExportRepositoryImpl(
    dataSource: CodexSessionExportDatasource(),
    formatter: CodexSessionExportFormatter(),
  );
}

@riverpod
Future<CodexThreadDetail> codexThreadDetail(
  Ref ref, {
  required String id,
}) {
  return ref.read(codexSessionExportRepositoryProvider).loadThreadDetail(id: id);
}

/// 把导出会话路由注册到 bridge。
///
/// /session/export — 弹系统保存对话框 → 选完路径后真正写文件。
///   payload.id     thread id (required)
///   payload.format 'markdown' | 'raws' | 'html' (required)
///
/// /session/export-bundle — 按 cwd (项目) 批量导出, 打成 zip。
///   payload.cwd    项目工作目录 (required)
///   payload.format 'markdown' | 'raws' | 'html' (required)
@Riverpod(keepAlive: true)
bool codexSessionExportRouteRegistration(Ref ref) {
  final bridge = ref.read(bridgeServiceProvider);
  final repo = ref.read(codexSessionExportRepositoryProvider);
  final datasource = CodexSessionExportDatasource();
  final formatter = CodexSessionExportFormatter();

  bridge.register('/session/export', (payload) async {
    final id = (payload['id'] as String?)?.trim();
    final format = (payload['format'] as String?)?.trim();
    if (id == null || id.isEmpty) {
      throw ArgumentError('missing id');
    }
    if (format == null || format.isEmpty) {
      throw ArgumentError('missing format');
    }

    final detail = await repo.loadThreadDetail(id: id);
    final defaultName = _defaultFileName(detail.title.isEmpty ? id : detail.title, format);
    final outputPath = await FilePicker.platform.saveFile(
      dialogTitle: 'Export conversation',
      fileName: defaultName,
      type: FileType.custom,
      allowedExtensions: [_extOf(format)],
    );
    if (outputPath == null) {
      // 用户取消
      return {'ok': false, 'cancelled': true};
    }

    await repo.exportToFile(
      detail: detail,
      format: format,
      outputPath: outputPath,
    );
    AppLogService.instance.info(
      'CodexExport',
      '已导出会话',
      details: 'id=$id format=$format path=$outputPath',
    );
    return {'ok': true, 'path': outputPath, 'format': format};
  });

  bridge.register('/session/export-bundle', (payload) async {
    final cwd = (payload['cwd'] as String?)?.trim();
    final format = (payload['format'] as String?)?.trim();
    if (cwd == null || cwd.isEmpty) {
      throw ArgumentError('missing cwd');
    }
    if (format == null || format.isEmpty) {
      throw ArgumentError('missing format');
    }
    if (format != 'markdown' && format != 'raws' && format != 'html') {
      throw ArgumentError('unsupported format: $format');
    }

    final threads = await datasource.listThreadsByCwd(cwd: cwd);
    if (threads.isEmpty) {
      return {'ok': false, 'reason': 'empty', 'count': 0};
    }

    final defaultName = _defaultBundleName(cwd, format);
    final outputPath = await FilePicker.platform.saveFile(
      dialogTitle: 'Export project conversations',
      fileName: defaultName,
      type: FileType.custom,
      allowedExtensions: ['zip'],
    );
    if (outputPath == null) {
      return {'ok': false, 'cancelled': true};
    }

    final archive = Archive();
    final ext = _extOf(format);
    final usedNames = <String>{};
    var ok = 0;
    var failed = 0;
    for (final t in threads) {
      final id = (t['id'] as String?) ?? '';
      final title = (t['title'] as String?) ?? '';
      if (id.isEmpty) continue;
      try {
        final detail = await repo.loadThreadDetail(id: id);
        final bytes = await _renderThreadBytes(
          detail: detail,
          format: format,
          formatter: formatter,
        );
        final base = _safeFileBase(title.isEmpty ? id : title);
        final entryName = _uniqueName(usedNames, '$base.$ext');
        archive.addFile(ArchiveFile(entryName, bytes.length, bytes));
        ok += 1;
      } catch (err) {
        failed += 1;
        AppLogService.instance.warning(
          'CodexExport',
          '批量导出: 单条失败',
          details: 'id=$id err=$err',
        );
      }
    }

    if (archive.isEmpty) {
      return {'ok': false, 'reason': 'all-failed', 'count': 0, 'failed': failed};
    }

    final zipBytes = ZipEncoder().encode(archive);
    await File(outputPath).writeAsBytes(zipBytes, flush: true);
    AppLogService.instance.info(
      'CodexExport',
      '已导出项目',
      details: 'cwd=$cwd format=$format count=$ok failed=$failed path=$outputPath',
    );
    return {
      'ok': true,
      'path': outputPath,
      'format': format,
      'count': ok,
      'failed': failed,
    };
  });

  return true;
}

/// 把单个 thread 渲染成对应格式的字节流, raws 直接读 rollout 文件。
Future<List<int>> _renderThreadBytes({
  required CodexThreadDetail detail,
  required String format,
  required CodexSessionExportFormatter formatter,
}) async {
  switch (format) {
    case 'markdown':
      return utf8.encode(formatter.renderMarkdown(detail));
    case 'html':
      return utf8.encode(formatter.renderHtml(detail));
    case 'raws':
      if (detail.rolloutPath.isEmpty) {
        throw StateError('rollout path is empty');
      }
      final src = File(detail.rolloutPath);
      if (!await src.exists()) {
        throw StateError('rollout file not found: ${detail.rolloutPath}');
      }
      return await src.readAsBytes();
    default:
      throw ArgumentError('unsupported format: $format');
  }
}

String _safeFileBase(String name) {
  final cleaned = name.replaceAll(RegExp(r'[\\/:*?"<>|\x00-\x1f]'), '_').trim();
  if (cleaned.isEmpty) return 'untitled';
  // 防止 Windows 路径太长, 单条文件名截断 80 字符
  return cleaned.length > 80 ? cleaned.substring(0, 80) : cleaned;
}

String _uniqueName(Set<String> used, String name) {
  if (used.add(name)) return name;
  final dot = name.lastIndexOf('.');
  final stem = dot >= 0 ? name.substring(0, dot) : name;
  final ext = dot >= 0 ? name.substring(dot) : '';
  var i = 2;
  while (true) {
    final candidate = '$stem-$i$ext';
    if (used.add(candidate)) return candidate;
    i += 1;
  }
}

String _defaultBundleName(String cwd, String format) {
  final base = _safeFileBase(p.basename(cwd));
  return '$base-${format == 'raws' ? 'raw' : format}.zip';
}

String _extOf(String format) {
  switch (format) {
    case 'markdown':
      return 'md';
    case 'raws':
      return 'jsonl';
    case 'html':
      return 'html';
    default:
      return 'txt';
  }
}

String _defaultFileName(String title, String format) {
  final safe = title.replaceAll(RegExp(r'[\\/:*?"<>|]'), '_');
  return '$safe.${_extOf(format)}';
}
