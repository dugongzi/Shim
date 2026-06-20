// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiProviderDto _$ApiProviderDtoFromJson(Map<String, dynamic> json) =>
    _ApiProviderDto(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      baseUrl: json['baseUrl'] as String? ?? '',
      apiKey: json['apiKey'] as String? ?? '',
      models:
          (json['models'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      selectedModel: json['selectedModel'] as String?,
      upstreamProtocol: json['upstreamProtocol'] as String? ?? 'responses',
      providerWeight: (json['providerWeight'] as num?)?.toInt() ?? 5,
      modelWeight: (json['modelWeight'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$ApiProviderDtoToJson(_ApiProviderDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'baseUrl': instance.baseUrl,
      'apiKey': instance.apiKey,
      'models': instance.models,
      'selectedModel': instance.selectedModel,
      'upstreamProtocol': instance.upstreamProtocol,
      'providerWeight': instance.providerWeight,
      'modelWeight': instance.modelWeight,
    };
