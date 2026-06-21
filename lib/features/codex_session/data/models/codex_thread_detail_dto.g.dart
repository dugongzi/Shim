// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codex_thread_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodexThreadDetailDto _$CodexThreadDetailDtoFromJson(
  Map<String, dynamic> json,
) => _CodexThreadDetailDto(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  cwd: json['cwd'] as String? ?? '',
  createdAtMs: (json['createdAtMs'] as num?)?.toInt() ?? 0,
  updatedAtMs: (json['updatedAtMs'] as num?)?.toInt() ?? 0,
  modelProvider: json['modelProvider'] as String? ?? '',
  model: json['model'] as String? ?? '',
  cliVersion: json['cliVersion'] as String? ?? '',
  rolloutPath: json['rolloutPath'] as String? ?? '',
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map(
            (e) => CodexThreadMessageDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$CodexThreadDetailDtoToJson(
  _CodexThreadDetailDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'cwd': instance.cwd,
  'createdAtMs': instance.createdAtMs,
  'updatedAtMs': instance.updatedAtMs,
  'modelProvider': instance.modelProvider,
  'model': instance.model,
  'cliVersion': instance.cliVersion,
  'rolloutPath': instance.rolloutPath,
  'messages': instance.messages,
};
