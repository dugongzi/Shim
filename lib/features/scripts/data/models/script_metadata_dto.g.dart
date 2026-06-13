// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'script_metadata_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScriptMetadataDto _$ScriptMetadataDtoFromJson(Map<String, dynamic> json) =>
    _ScriptMetadataDto(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      version: json['version'] as String? ?? '',
      author: json['author'] as String? ?? '',
    );

Map<String, dynamic> _$ScriptMetadataDtoToJson(_ScriptMetadataDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'author': instance.author,
    };
