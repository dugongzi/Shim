import 'package:shim/core/services/local_proxy_service.dart';

class ClaudeBridgeBindingDto {
  const ClaudeBridgeBindingDto({
    required this.codexThreadId,
    required this.sessionId,
    required this.jsonlPath,
    this.title,
  });

  final String codexThreadId;
  final String sessionId;
  final String jsonlPath;
  final String? title;

  factory ClaudeBridgeBindingDto.fromBinding({
    required String codexThreadId,
    required ClaudeBridgeBinding binding,
  }) {
    return ClaudeBridgeBindingDto(
      codexThreadId: codexThreadId,
      sessionId: binding.sessionId,
      jsonlPath: binding.jsonlPath,
      title: binding.title,
    );
  }

  factory ClaudeBridgeBindingDto.fromJson(
    String codexThreadId,
    Map<String, Object?> json,
  ) {
    return ClaudeBridgeBindingDto(
      codexThreadId: codexThreadId,
      sessionId: (json['sessionId'] as String?) ?? '',
      jsonlPath: (json['jsonlPath'] as String?) ?? '',
      title: json['title'] as String?,
    );
  }

  ClaudeBridgeBinding toBinding() {
    return ClaudeBridgeBinding(
      sessionId: sessionId,
      jsonlPath: jsonlPath,
      title: title,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'sessionId': sessionId,
      'jsonlPath': jsonlPath,
      if (title != null && title!.isNotEmpty) 'title': title,
    };
  }

  bool get isValid =>
      codexThreadId.isNotEmpty && sessionId.isNotEmpty && jsonlPath.isNotEmpty;
}
