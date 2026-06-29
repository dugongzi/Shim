// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_query_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 暴露全局日志服务给 logs feature widget。
/// 数据源是 core 单例 `AppLogService.instance`(同时也是 ValueNotifier),
/// 这里仅作 feature 层的薄包装 —— 让 widget 不直接 import core service。

@ProviderFor(logsService)
const logsServiceProvider = LogsServiceProvider._();

/// 暴露全局日志服务给 logs feature widget。
/// 数据源是 core 单例 `AppLogService.instance`(同时也是 ValueNotifier),
/// 这里仅作 feature 层的薄包装 —— 让 widget 不直接 import core service。

final class LogsServiceProvider
    extends $FunctionalProvider<AppLogService, AppLogService, AppLogService>
    with $Provider<AppLogService> {
  /// 暴露全局日志服务给 logs feature widget。
  /// 数据源是 core 单例 `AppLogService.instance`(同时也是 ValueNotifier),
  /// 这里仅作 feature 层的薄包装 —— 让 widget 不直接 import core service。
  const LogsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logsServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logsServiceHash();

  @$internal
  @override
  $ProviderElement<AppLogService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppLogService create(Ref ref) {
    return logsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLogService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLogService>(value),
    );
  }
}

String _$logsServiceHash() => r'd7cdfcca50b155443aabb191411ade95f2001e0e';
