// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieCrewImpl _$$MovieCrewImplFromJson(Map<String, dynamic> json) =>
    _$MovieCrewImpl(
      adult: json['adult'] as bool? ?? false,
      gender: (json['gender'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      knownForDept: json['known_for_department'] as String? ?? '',
      name: json['name'] as String? ?? '',
      originalName: json['original_name'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      profilePath: json['profile_path'] as String? ?? '',
      creditId: json['credit_id'] as String? ?? '',
      department: json['department'] as String? ?? '',
      job: json['job'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieCrewImplToJson(_$MovieCrewImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.knownForDept,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
      'credit_id': instance.creditId,
      'department': instance.department,
      'job': instance.job,
    };
