// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiResponseImpl _$$GeminiResponseImplFromJson(Map<String, dynamic> json) =>
    _$GeminiResponseImpl(
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageMetadata:
          UsageMetadata.fromJson(json['usageMetadata'] as Map<String, dynamic>),
      modelVersion: json['modelVersion'] as String,
    );

Map<String, dynamic> _$$GeminiResponseImplToJson(
        _$GeminiResponseImpl instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'usageMetadata': instance.usageMetadata,
      'modelVersion': instance.modelVersion,
    };
