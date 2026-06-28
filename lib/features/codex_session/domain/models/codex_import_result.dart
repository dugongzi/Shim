/// 导入单条 thread 的结果:写盘后的新 id、文件路径与最终归属 cwd / title。
class CodexImportResult {
  CodexImportResult({
    required this.id,
    required this.rolloutPath,
    required this.originalId,
    required this.cwd,
    required this.title,
  });

  final String id;
  final String rolloutPath;
  final String originalId;
  final String cwd;
  final String title;
}

/// 批量导入(zip)结果:成功 / 失败计数 + 导入成功条目摘要。
class CodexImportBundleResult {
  CodexImportBundleResult({
    required this.ok,
    required this.failed,
    required this.imported,
  });

  final int ok;
  final int failed;

  /// 每条:{id, title, originalEntry}
  final List<Map<String, dynamic>> imported;
}
