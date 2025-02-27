// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageMetadataImpl _$$UsageMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UsageMetadataImpl(
      promptTokenCount: (json['promptTokenCount'] as num).toInt(),
      candidatesTokenCount: (json['candidatesTokenCount'] as num).toInt(),
      totalTokenCount: (json['totalTokenCount'] as num).toInt(),
      promptTokensDetails: (json['promptTokensDetails'] as List<dynamic>)
          .map((e) => TokenDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      candidatesTokensDetails:
          (json['candidatesTokensDetails'] as List<dynamic>)
              .map((e) => TokenDetails.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$UsageMetadataImplToJson(_$UsageMetadataImpl instance) =>
    <String, dynamic>{
      'promptTokenCount': instance.promptTokenCount,
      'candidatesTokenCount': instance.candidatesTokenCount,
      'totalTokenCount': instance.totalTokenCount,
      'promptTokensDetails': instance.promptTokensDetails,
      'candidatesTokensDetails': instance.candidatesTokensDetails,
    };
