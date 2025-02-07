// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_production_companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieProductionCompaniesImpl _$$MovieProductionCompaniesImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieProductionCompaniesImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      logoPath: json['logo_path'] as String? ?? '',
      companyName: json['name'] as String? ?? '',
      originCountry: json['origin_country'] as String? ?? '',
    );

Map<String, dynamic> _$$MovieProductionCompaniesImplToJson(
        _$MovieProductionCompaniesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.companyName,
      'origin_country': instance.originCountry,
    };
