import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:shim/features/codex_session/data/models/codex_thread_detail_dto.dart';
import 'package:sqlite3/sqlite3.dart';

class CodexSessionExportDatasource {
  /// 读 threads 元数据 + 打开 rollout JSONL 文件流式解析每行,
  /// 归一成 CodexThreadDetailDto。
  Future<CodexThreadDetailDto> loadDetail({required String id}) async {
    final dbPath = _codexDbPath();
    if (!File(dbPath).existsSync()) {
      throw StateError('Codex database not found: $dbPath');
    }
    final db = sqlite3.open(dbPath, mode: OpenMode.readOnly);
    Map<String, dynamic> meta;
    try {
      final rows = db.select(
        '''
        SELECT id, title, cwd, rollout_path,
               created_at_ms, updated_at_ms,
               model_provider, model, cli_version
        FROM threads
        WHERE id = ?
        ''',
        [id],
      );
      if (rows.isEmpty) {
        throw StateError('thread not found: $id');
      }
      final row = rows.first;
      meta = {
        'id': row['id'] ?? '',
        'title': row['title'] ?? '',
        'cwd': row['cwd'] ?? '',
        'rolloutPath': row['rollout_path'] ?? '',
        'createdAtMs': row['created_at_ms'] ?? 0,
        'updatedAtMs': row['updated_at_ms'] ?? 0,
        'modelProvider': row['model_provider'] ?? '',
        'model': row['model'] ?? '',
        'cliVersion': row['cli_version'] ?? '',
      };
    } finally {
      db.dispose();
    }

    final rolloutPath = meta['rolloutPath'] as String;
    final messages = await _parseRollout(rolloutPath);

    return CodexThreadDetailDto.fromJson({
      ...meta,
      'messages': messages,
    });
  }

  Future<List<Map<String, dynamic>>> _parseRollout(String path) async {
    if (path.isEmpty) return [];
    final file = File(path);
    if (!await file.exists()) return [];
    final messages = <Map<String, dynamic>>[];
    var index = 0;
    await for (final line in file
        .openRead()
        .transform(utf8.decoder)
        .transform(const LineSplitter())) {
      if (line.trim().isEmpty) continue;
      try {
        final obj = jsonDecode(line) as Map<String, dynamic>;
        final type = obj['type'] as String?;
        final timestamp = obj['timestamp'] as String? ?? '';
        final payload = obj['payload'];
        if (payload is! Map<String, dynamic>) continue;

        if (type == 'response_item') {
          final itemType = payload['type'] as String?;
          final role = payload['role'] as String? ?? '';
          if (itemType == 'message') {
            final content = payload['content'];
            if (content is! List) continue;
            final buf = StringBuffer();
            for (final c in content) {
              if (c is! Map) continue;
              final ct = c['type'] as String?;
              if (ct == 'input_text' || ct == 'output_text' || ct == 'text') {
                final t = c['text'];
                if (t is String) buf.write(t);
              }
            }
            final text = buf.toString();
            if (text.isEmpty) continue;
            messages.add({
              'index': index++,
              'timestamp': timestamp,
              'role': role,
              'kind': 'text',
              'text': text,
            });
          } else if (itemType == 'function_call') {
            final name = payload['name'] as String? ?? '';
            final args = payload['arguments'] as String? ?? '';
            messages.add({
              'index': index++,
              'timestamp': timestamp,
              'role': 'tool',
              'kind': 'tool_use',
              'text': '$name($args)',
            });
          } else if (itemType == 'function_call_output') {
            final output = payload['output'] as String? ?? '';
            messages.add({
              'index': index++,
              'timestamp': timestamp,
              'role': 'tool',
              'kind': 'tool_result',
              'text': output,
            });
          }
        }
      } catch (_) {
        // 单行解析失败不影响整体
      }
    }
    return messages;
  }

  String _codexDbPath() {
    final home = Platform.isWindows
        ? Platform.environment['USERPROFILE']
        : Platform.environment['HOME'];
    if (home == null || home.isEmpty) {
      throw StateError('Cannot resolve user home directory');
    }
    return p.join(home, '.codex', 'state_5.sqlite');
  }
}
