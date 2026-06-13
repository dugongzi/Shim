import 'package:shim/features/scripts/domain/models/inject_script.dart';

abstract class ScriptQueryRepository {
  /// 列出用户脚本目录下所有脚本
  Future<List<InjectScript>> listScripts();

  /// 单个脚本启用状态（默认 false）
  Future<bool> isScriptEnabled({required String id});
}
