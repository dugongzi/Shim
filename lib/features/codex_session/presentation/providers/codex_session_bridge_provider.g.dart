// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codex_session_bridge_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 把 codex 会话相关全部路由注册到 bridge,供 codex_enhance.js 调用。
///
/// 查询:
///   /session/list                   列出未归档会话
///
/// 写:
///   /session/delete                 删除某 thread
///   /session/export                 弹保存对话框 → 单条导出
///   /session/export-bundle          按 cwd 项目批量导出 zip
///   /session/import                 弹文件选择器 → 单条 jsonl 导入
///   /session/import-bundle          弹文件选择器 → zip 内多个 jsonl 批量导入

@ProviderFor(codexSessionRouteRegistration)
const codexSessionRouteRegistrationProvider =
    CodexSessionRouteRegistrationProvider._();

/// 把 codex 会话相关全部路由注册到 bridge,供 codex_enhance.js 调用。
///
/// 查询:
///   /session/list                   列出未归档会话
///
/// 写:
///   /session/delete                 删除某 thread
///   /session/export                 弹保存对话框 → 单条导出
///   /session/export-bundle          按 cwd 项目批量导出 zip
///   /session/import                 弹文件选择器 → 单条 jsonl 导入
///   /session/import-bundle          弹文件选择器 → zip 内多个 jsonl 批量导入

final class CodexSessionRouteRegistrationProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// 把 codex 会话相关全部路由注册到 bridge,供 codex_enhance.js 调用。
  ///
  /// 查询:
  ///   /session/list                   列出未归档会话
  ///
  /// 写:
  ///   /session/delete                 删除某 thread
  ///   /session/export                 弹保存对话框 → 单条导出
  ///   /session/export-bundle          按 cwd 项目批量导出 zip
  ///   /session/import                 弹文件选择器 → 单条 jsonl 导入
  ///   /session/import-bundle          弹文件选择器 → zip 内多个 jsonl 批量导入
  const CodexSessionRouteRegistrationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'codexSessionRouteRegistrationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$codexSessionRouteRegistrationHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return codexSessionRouteRegistration(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$codexSessionRouteRegistrationHash() =>
    r'8cba06440fe746425782a2267a05308120c979e1';
