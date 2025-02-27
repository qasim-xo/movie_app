// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDetailsImpl _$$TokenDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TokenDetailsImpl(
      modality: json['modality'] as String,
      tokenCount: (json['tokenCount'] as num).toInt(),
    );

Map<String, dynamic> _$$TokenDetailsImplToJson(_$TokenDetailsImpl instance) =>
    <String, dynamic>{
      'modality': instance.modality,
      'tokenCount': instance.tokenCount,
    };
