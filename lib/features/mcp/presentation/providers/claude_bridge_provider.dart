import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shim/core/services/app_log_service.dart';
import 'package:shim/core/services/app_storage.dart';
import 'package:shim/core/services/bridge_service.dart';
import 'package:shim/core/services/local_proxy_service.dart';
import 'package:shim/features/mcp/data/datasources/claude_bridge_binding_datasource.dart';
import 'package:shim/features/mcp/data/models/claude_bridge_binding_dto.dart';

part 'claude_bridge_provider.g.dart';

/// 注册 Claude 桥控制路由。
///
/// 绑定按 codex thread id 隔离 —— codex 侧栏每条对话各自有一个 Claude 桥状态。
///
/// `/claude-bridge/bind`   — 绑定一条 Claude 会话作为当前 codex thread 的接续上下文
/// `/claude-bridge/unbind` — 解除当前 codex thread 的绑定
/// `/claude-bridge/state`  — 读某个 codex thread 的绑定状态(JS chip 初始化用)
/// `/claude-bridge/list`   — 读全部 codex thread -> Claude 会话绑定状态
///
@Riverpod(keepAlive: true)
ClaudeBridgeRouteController claudeBridgeRouteController(Ref ref) {
  return registerClaudeBridgeRoutes(
    bridge: ref.read(bridgeServiceProvider),
    proxy: ref.read(localProxyServiceProvider),
    datasource: ClaudeBridgeBindingDatasource(
      storage: ref.read(appStorageProvider),
    ),
  );
}

/// 数据写入 SharedPreferencesAsync,运行态同步到 [LocalProxyService]。
@Riverpod(keepAlive: true)
bool claudeBridgeRouteRegistration(Ref ref) {
  ref.read(claudeBridgeRouteControllerProvider);
  return true;
}

ClaudeBridgeRouteController registerClaudeBridgeRoutes({
  required BridgeService bridge,
  required LocalProxyService proxy,
  required ClaudeBridgeBindingDatasource datasource,
}) {
  final controller = ClaudeBridgeRouteController(
    proxy: proxy,
    datasource: datasource,
  );
  unawaited(controller.ensureHydrated());

  bridge.register('/claude-bridge/bind', (payload) async {
    await controller.ensureHydrated();
    final codexThreadId = payload['codexThreadId'];
    if (codexThreadId is! String || codexThreadId.isEmpty) {
      throw ArgumentError('codexThreadId is required');
    }
    final sessionId = payload['sessionId'];
    final jsonlPath = payload['jsonlPath'];
    if (sessionId is! String || sessionId.isEmpty) {
      throw ArgumentError('sessionId is required');
    }
    if (jsonlPath is! String || jsonlPath.isEmpty) {
      throw ArgumentError('jsonlPath is required');
    }
    final rawTitle = payload['title'];
    final title = rawTitle is String && rawTitle.isNotEmpty ? rawTitle : null;
    proxy.setClaudeBinding(
      codexThreadId: codexThreadId,
      binding: ClaudeBridgeBinding(
        sessionId: sessionId,
        jsonlPath: jsonlPath,
        title: title,
      ),
    );
    await controller.persist();
    return controller.statePayload(codexThreadId);
  });

  bridge.register('/claude-bridge/unbind', (payload) async {
    await controller.ensureHydrated();
    final codexThreadId = payload['codexThreadId'];
    if (codexThreadId is! String || codexThreadId.isEmpty) {
      throw ArgumentError('codexThreadId is required');
    }
    proxy.clearClaudeBinding(codexThreadId: codexThreadId);
    await controller.persist();
    return controller.statePayload(codexThreadId);
  });

  bridge.register('/claude-bridge/state', (payload) async {
    await controller.ensureHydrated();
    final codexThreadId = payload['codexThreadId'];
    // /state 允许 codexThreadId 为空 — 此时返回 bound:false,让 JS 知道当前没活跃 thread
    final id = codexThreadId is String ? codexThreadId : '';
    return controller.statePayload(id);
  });

  bridge.register('/claude-bridge/list', (payload) async {
    await controller.ensureHydrated();
    return controller.bindingsPayload();
  });

  AppLogService.instance.info('ClaudeBridge', '路由已注册');
  return controller;
}

class ClaudeBridgeRouteController {
  ClaudeBridgeRouteController({
    required LocalProxyService proxy,
    required ClaudeBridgeBindingDatasource datasource,
  }) : _proxy = proxy,
       _datasource = datasource;

  final LocalProxyService _proxy;
  final ClaudeBridgeBindingDatasource _datasource;

  Future<void>? _hydrating;
  bool _hydrated = false;

  Future<void> ensureHydrated() {
    if (_hydrated) return Future.value();
    final running = _hydrating;
    if (running != null) return running;
    final future = _hydrate();
    _hydrating = future;
    return future;
  }

  Future<void> _hydrate() async {
    try {
      final saved = await _datasource.read();
      _proxy.replaceClaudeBindings(
        saved.map((key, value) => MapEntry(key, value.toBinding())),
      );
      _hydrated = true;
    } finally {
      _hydrating = null;
    }
  }

  Future<void> persist() async {
    await ensureHydrated();
    final snapshot = _proxy.claudeBindingsSnapshot.map(
      (key, value) => MapEntry(
        key,
        ClaudeBridgeBindingDto.fromBinding(codexThreadId: key, binding: value),
      ),
    );
    await _datasource.write(snapshot);
  }

  Map<String, dynamic> statePayload(String codexThreadId) {
    if (codexThreadId.isEmpty) return const {'bound': false};
    final binding = _proxy.claudeBindingFor(codexThreadId);
    if (binding == null) {
      return {'bound': false, 'codexThreadId': codexThreadId};
    }
    return {
      'bound': true,
      'codexThreadId': codexThreadId,
      'sessionId': binding.sessionId,
      'jsonlPath': binding.jsonlPath,
      'title': binding.title,
    };
  }

  Map<String, dynamic> bindingsPayload() {
    final items = _proxy.claudeBindingsSnapshot.entries
        .map(
          (entry) => {
            'codexThreadId': entry.key,
            'sessionId': entry.value.sessionId,
            'jsonlPath': entry.value.jsonlPath,
            'title': entry.value.title,
          },
        )
        .toList();
    return {'bindings': items};
  }
}
