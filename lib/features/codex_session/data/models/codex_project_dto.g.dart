// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codex_project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CodexProjectDto _$CodexProjectDtoFromJson(Map<String, dynamic> json) =>
    _CodexProjectDto(
      cwd: json['cwd'] as String? ?? '',
      sessionCount: (json['sessionCount'] as num?)?.toInt() ?? 0,
      lastActiveMs: (json['lastActiveMs'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CodexProjectDtoToJson(_CodexProjectDto instance) =>
    <String, dynamic>{
      'cwd': instance.cwd,
      'sessionCount': instance.sessionCount,
      'lastActiveMs': instance.lastActiveMs,
    };
