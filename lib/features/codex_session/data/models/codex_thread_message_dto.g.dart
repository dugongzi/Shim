// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codex_thread_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodexThreadMessageDto _$CodexThreadMessageDtoFromJson(
  Map<String, dynamic> json,
) => _CodexThreadMessageDto(
  index: (json['index'] as num?)?.toInt() ?? 0,
  timestamp: json['timestamp'] as String? ?? '',
  role: json['role'] as String? ?? '',
  kind: json['kind'] as String? ?? 'text',
  text: json['text'] as String? ?? '',
);

Map<String, dynamic> _$CodexThreadMessageDtoToJson(
  _CodexThreadMessageDto instance,
) => <String, dynamic>{
  'index': instance.index,
  'timestamp': instance.timestamp,
  'role': instance.role,
  'kind': instance.kind,
  'text': instance.text,
};
