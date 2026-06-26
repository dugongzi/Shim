// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claude_bridge_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 注册 Claude 桥控制路由。
///
/// 绑定按 codex thread id 隔离 —— codex 侧栏每条对话各自有一个 Claude 桥状态。
///
/// `/claude-bridge/bind`   — 绑定一条 Claude 会话作为当前 codex thread 的接续上下文
/// `/claude-bridge/unbind` — 解除当前 codex thread 的绑定
/// `/claude-bridge/state`  — 读某个 codex thread 的绑定状态(JS chip 初始化用)
/// `/claude-bridge/list`   — 读全部 codex thread -> Claude 会话绑定状态
///

@ProviderFor(claudeBridgeRouteController)
const claudeBridgeRouteControllerProvider =
    ClaudeBridgeRouteControllerProvider._();

/// 注册 Claude 桥控制路由。
///
/// 绑定按 codex thread id 隔离 —— codex 侧栏每条对话各自有一个 Claude 桥状态。
///
/// `/claude-bridge/bind`   — 绑定一条 Claude 会话作为当前 codex thread 的接续上下文
/// `/claude-bridge/unbind` — 解除当前 codex thread 的绑定
/// `/claude-bridge/state`  — 读某个 codex thread 的绑定状态(JS chip 初始化用)
/// `/claude-bridge/list`   — 读全部 codex thread -> Claude 会话绑定状态
///

final class ClaudeBridgeRouteControllerProvider
    extends
        $FunctionalProvider<
          ClaudeBridgeRouteController,
          ClaudeBridgeRouteController,
          ClaudeBridgeRouteController
        >
    with $Provider<ClaudeBridgeRouteController> {
  /// 注册 Claude 桥控制路由。
  ///
  /// 绑定按 codex thread id 隔离 —— codex 侧栏每条对话各自有一个 Claude 桥状态。
  ///
  /// `/claude-bridge/bind`   — 绑定一条 Claude 会话作为当前 codex thread 的接续上下文
  /// `/claude-bridge/unbind` — 解除当前 codex thread 的绑定
  /// `/claude-bridge/state`  — 读某个 codex thread 的绑定状态(JS chip 初始化用)
  /// `/claude-bridge/list`   — 读全部 codex thread -> Claude 会话绑定状态
  ///
  const ClaudeBridgeRouteControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claudeBridgeRouteControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claudeBridgeRouteControllerHash();

  @$internal
  @override
  $ProviderElement<ClaudeBridgeRouteController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClaudeBridgeRouteController create(Ref ref) {
    return claudeBridgeRouteController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClaudeBridgeRouteController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClaudeBridgeRouteController>(value),
    );
  }
}

String _$claudeBridgeRouteControllerHash() =>
    r'5140f8f62cf8bfe2491f4f751b92c56b3419cd4c';

/// 数据写入 SharedPreferencesAsync,运行态同步到 [LocalProxyService]。

@ProviderFor(claudeBridgeRouteRegistration)
const claudeBridgeRouteRegistrationProvider =
    ClaudeBridgeRouteRegistrationProvider._();

/// 数据写入 SharedPreferencesAsync,运行态同步到 [LocalProxyService]。

final class ClaudeBridgeRouteRegistrationProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// 数据写入 SharedPreferencesAsync,运行态同步到 [LocalProxyService]。
  const ClaudeBridgeRouteRegistrationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claudeBridgeRouteRegistrationProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claudeBridgeRouteRegistrationHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return claudeBridgeRouteRegistration(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$claudeBridgeRouteRegistrationHash() =>
    r'312d57af49329e6533fa4c5ff87144845b76a7d2';
