// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inject_script_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InjectScriptDto _$InjectScriptDtoFromJson(Map<String, dynamic> json) =>
    _InjectScriptDto(
      id: json['id'] as String? ?? '',
      filePath: json['filePath'] as String? ?? '',
      metadata: json['metadata'] == null
          ? const ScriptMetadataDto()
          : ScriptMetadataDto.fromJson(
              json['metadata'] as Map<String, dynamic>,
            ),
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$InjectScriptDtoToJson(_InjectScriptDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filePath': instance.filePath,
      'metadata': instance.metadata,
      'code': instance.code,
    };
