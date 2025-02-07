import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_production_companies.freezed.dart';
part 'movie_production_companies.g.dart';

@freezed
abstract class MovieProductionCompany with _$MovieProductionCompany {
  @JsonSerializable(explicitToJson: true)
  factory MovieProductionCompany(
          {@JsonKey(name: 'id') @Default(0) int id,
          @JsonKey(name: 'logo_path') @Default('') String logoPath,
          @JsonKey(name: 'name') @Default('') String companyName,
          @JsonKey(name: 'origin_country') @Default('') String originCountry}) =
      _MovieProductionCompanies;
  factory MovieProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$MovieProductionCompanyFromJson(json);
}
