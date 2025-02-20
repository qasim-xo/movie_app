import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_crew.freezed.dart';
part 'movie_crew.g.dart';

@freezed
class MovieCrew with _$MovieCrew {
  @JsonSerializable(explicitToJson: true)
  factory MovieCrew(
      {@JsonKey(name: 'adult') @Default(false) bool adult,
      @JsonKey(name: 'gender') @Default(0) int gender,
      @JsonKey(name: 'id') @Default(0) int id,
      @JsonKey(name: 'known_for_department') @Default('') String knownForDept,
      @JsonKey(name: 'name') @Default('') String name,
      @JsonKey(name: 'original_name') @Default('') String originalName,
      @JsonKey(name: 'popularity') @Default(0.0) double popularity,
      @JsonKey(name: 'profile_path') @Default('') String profilePath,
      @JsonKey(name: 'credit_id') @Default('') String creditId,
      @JsonKey(name: 'department') @Default('') String department,
      @JsonKey(name: 'job') @Default('') String job}) = _MovieCrew;

  factory MovieCrew.fromJson(Map<String, dynamic> json) =>
      _$MovieCrewFromJson(json);
}
