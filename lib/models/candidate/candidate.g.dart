// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateImpl _$$CandidateImplFromJson(Map<String, dynamic> json) =>
    _$CandidateImpl(
      content: Content.fromJson(json['content'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String,
      avgLogprobs: (json['avgLogprobs'] as num).toDouble(),
    );

Map<String, dynamic> _$$CandidateImplToJson(_$CandidateImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'finishReason': instance.finishReason,
      'avgLogprobs': instance.avgLogprobs,
    };
