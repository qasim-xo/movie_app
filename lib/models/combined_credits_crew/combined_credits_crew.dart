import 'package:freezed_annotation/freezed_annotation.dart';

part 'combined_credits_crew.freezed.dart';
part 'combined_credits_crew.g.dart';

@freezed
abstract class CombinedCreditsCrew with _$CombinedCreditsCrew {
  factory CombinedCreditsCrew({
    @JsonKey(name: 'adult') @Default(false) bool adult,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'original_language') @Default('') String originalLanguage,
    @JsonKey(name: 'original_title') @Default('') String originalTitle,
    @JsonKey(name: 'overview') @Default('') String overview,
    @JsonKey(name: 'popularity') @Default(0.0) double popularity,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'video') @Default(false) bool video,
    @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
    @JsonKey(name: 'vote_count') @Default(0) int voteCount,
    @JsonKey(name: 'credit_id') @Default('') String creditId,
    @JsonKey(name: 'department') @Default('') String department,
    @JsonKey(name: 'job') @Default('') String job,
    @JsonKey(name: 'media_type') @Default('') String mediaType,
  }) = _CombinedCreditsCrew;
  factory CombinedCreditsCrew.fromJson(Map<String, dynamic> json) =>
      _$CombinedCreditsCrewFromJson(json);
}
