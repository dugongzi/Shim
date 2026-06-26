// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_bridge_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 注册控制面板"日志"tab 用到的路由。
///
/// `/logs/list`  — 拉当前内存里的全部日志条目, payload 可选 `{limit: number}`
/// `/logs/clear` — 清空 AppLogService 内存缓冲

@ProviderFor(logsBridgeRouteRegistration)
const logsBridgeRouteRegistrationProvider =
    LogsBridgeRouteRegistrationProvider._();

/// 注册控制面板"日志"tab 用到的路由。
///
/// `/logs/list`  — 拉当前内存里的全部日志条目, payload 可选 `{limit: number}`
/// `/logs/clear` — 清空 AppLogService 内存缓冲

final class LogsBridgeRouteRegistrationProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// 注册控制面板"日志"tab 用到的路由。
  ///
  /// `/logs/list`  — 拉当前内存里的全部日志条目, payload 可选 `{limit: number}`
  /// `/logs/clear` — 清空 AppLogService 内存缓冲
  const LogsBridgeRouteRegistrationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logsBridgeRouteRegistrationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logsBridgeRouteRegistrationHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return logsBridgeRouteRegistration(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$logsBridgeRouteRegistrationHash() =>
    r'7ea1d3a356c7ece58fc84aff9be75255864eaf3c';
