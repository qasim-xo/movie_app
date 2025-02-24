// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combined_credits_crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CombinedCreditsCrewImpl _$$CombinedCreditsCrewImplFromJson(
        Map<String, dynamic> json) =>
    _$CombinedCreditsCrewImpl(
      adult: json['adult'] as bool? ?? false,
      id: (json['id'] as num?)?.toInt() ?? 0,
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
      title: json['title'] as String? ?? '',
      video: json['video'] as bool? ?? false,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
      creditId: json['credit_id'] as String? ?? '',
      department: json['department'] as String? ?? '',
      job: json['job'] as String? ?? '',
      mediaType: json['media_type'] as String? ?? '',
    );

Map<String, dynamic> _$$CombinedCreditsCrewImplToJson(
        _$CombinedCreditsCrewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'credit_id': instance.creditId,
      'department': instance.department,
      'job': instance.job,
      'media_type': instance.mediaType,
    };
