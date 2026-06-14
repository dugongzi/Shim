import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:shim/core/services/app_storage.dart';
import 'package:shim/features/providers/data/models/api_provider_dto.dart';
import 'package:toml/toml.dart';

class ProviderActionDatasource {
  ProviderActionDatasource({required this.appStorage});

  final AppStorage appStorage;

  static const _listKey = 'api_provider_list';
  static const _selectedKey = 'api_provider_selected';
  static const _proxyEnabledKey = 'codex_proxy_enabled';
  static const _proxyPortKey = 'codex_proxy_port';

  /// 备份原始 base_url 的存储 key
  static const _backupKey = 'codex_base_url_backup';

  Future<void> saveProviders(List<ApiProviderDto> providers) async {
    final encoded = jsonEncode(providers.map((p) => p.toJson()).toList());
    await appStorage.setString(_listKey, encoded);
  }

  Future<void> saveSelectedId(String? id) async {
    if (id == null) {
      await appStorage.remove(_selectedKey);
    } else {
      await appStorage.setString(_selectedKey, id);
    }
  }

  Future<void> saveProxyEnabled(bool enabled) {
    return appStorage.setBool(_proxyEnabledKey, enabled);
  }

  Future<void> saveProxyPort(int port) {
    return appStorage.setInt(_proxyPortKey, port);
  }

  /// 开启接管：把当前生效的 base_url 改成本地代理地址，原值备份。
  ///
  /// 用 toml 库**只做定位**（解析出当前 `model_provider` 段的 base_url 准确原值），
  /// 再对原文里那个具体的值做精确文本替换——不走 toml encode，避免重排格式/丢注释。
  Future<bool> enableTakeover({required String localProxyUrl}) async {
    final path = _codexConfigPath();
    // ignore: avoid_print
    print('[Takeover] enableTakeover called, localProxyUrl=$localProxyUrl, path=$path');
    final file = File(path);
    if (!await file.exists()) {
      // ignore: avoid_print
      print('[Takeover] ❌ config.toml 不存在: $path');
      return false;
    }

    final text = await file.readAsString();
    final currentUrl = _resolveActiveBaseUrl(text);
    // ignore: avoid_print
    print('[Takeover] 定位到 currentUrl=$currentUrl');
    if (currentUrl == null || currentUrl.isEmpty) {
      // ignore: avoid_print
      print('[Takeover] ❌ 定位 base_url 失败');
      return false;
    }
    // 已经是本地代理地址则无需再改（避免把代理地址当原值备份）
    if (_isLocalProxy(currentUrl)) {
      // ignore: avoid_print
      print('[Takeover] ⚠️ 当前已是本地代理地址，跳过');
      return true;
    }

    final replaced = _replaceBaseUrlValue(text, currentUrl, localProxyUrl);
    if (replaced == null) {
      // ignore: avoid_print
      print('[Takeover] ❌ 替换失败（原文找不到精确值）');
      return false;
    }

    await appStorage.setString(_backupKey, currentUrl);
    await file.writeAsString(replaced);
    // ignore: avoid_print
    print('[Takeover] ✅ 已改写 base_url: $currentUrl → $localProxyUrl');
    return true;
  }

  /// 关闭接管：把当前的本地代理 base_url 精确还原成备份的原值。
  Future<bool> disableTakeover() async {
    final original = await appStorage.getString(_backupKey);
    if (original == null || original.isEmpty) return false;

    final file = File(_codexConfigPath());
    if (!await file.exists()) return false;

    final text = await file.readAsString();
    final currentUrl = _resolveActiveBaseUrl(text);
    if (currentUrl == null) return false;

    final replaced = _replaceBaseUrlValue(text, currentUrl, original);
    if (replaced == null) return false;

    await file.writeAsString(replaced);
    await appStorage.remove(_backupKey);
    return true;
  }

  /// 用 toml 库解析定位当前生效的 base_url：
  /// 优先 `[model_providers.<model_provider>].base_url`，回退顶层 `base_url`。
  /// 解析失败返回 null（调用方放弃改写，保证不会乱动文件）。
  String? _resolveActiveBaseUrl(String text) {
    try {
      final doc = TomlDocument.parse(text).toMap();
      final modelProvider = doc['model_provider'];
      final providers = doc['model_providers'];
      if (modelProvider is String && providers is Map) {
        final active = providers[modelProvider];
        if (active is Map && active['base_url'] is String) {
          return active['base_url'] as String;
        }
      }
      final topLevel = doc['base_url'];
      return topLevel is String ? topLevel : null;
    } catch (_) {
      return null;
    }
  }

  /// 在原文里把 `base_url = "<oldValue>"` 精确替换成 `base_url = "<newValue>"`，
  /// 只动这一处的值、保留原引号风格，其它字节不变。oldValue 找不到则返回 null。
  String? _replaceBaseUrlValue(String text, String oldValue, String newValue) {
    // 匹配 base_url = "<oldValue>" 或 '<oldValue>'，oldValue 转义后精确匹配
    final escaped = RegExp.escape(oldValue);
    final pattern = RegExp('''(base_url\\s*=\\s*)(['"])$escaped\\2''');
    final match = pattern.firstMatch(text);
    if (match == null) return null;
    final quote = match.group(2);
    return text.replaceRange(
      match.start,
      match.end,
      '${match.group(1)}$quote$newValue$quote',
    );
  }

  bool _isLocalProxy(String url) {
    return url.contains('127.0.0.1') || url.contains('localhost');
  }

  String _codexConfigPath() {
    final home = Platform.isWindows
        ? Platform.environment['USERPROFILE']
        : Platform.environment['HOME'];
    if (home == null || home.isEmpty) {
      throw StateError('Cannot resolve user home directory');
    }
    return p.join(home, '.codex', 'config.toml');
  }
}
