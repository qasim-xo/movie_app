import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show.freezed.dart';
part 'tv_show.g.dart';

@freezed
class TvShow with _$TvShow {
  @JsonSerializable(explicitToJson: true)
  factory TvShow(
      {@JsonKey(name: 'adult') @Default(false) bool adult,
      @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
      @JsonKey(name: 'genre_ids') @Default([]) List<int> genreIds,
      @JsonKey(name: 'id') @Default(0) int id,
      @JsonKey(name: 'origin_country') @Default([]) List<String> originCountry,
      @JsonKey(name: 'original_language') @Default('') String originalLanguage,
      @JsonKey(name: 'original_name') @Default('') String originalName,
      @JsonKey(name: 'overview') @Default('') String overview,
      @JsonKey(name: 'poster_path') @Default('Not Available') String posterPath,
      @JsonKey(name: 'first_air_date') @Default('') String firstAirDate,
      @JsonKey(name: 'name') @Default('') String name,
      @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
      @JsonKey(name: 'vote_count') @Default(0) int voteCount,
      @JsonKey(name: 'popularity') @Default(0.0) double popularity}) = _TvShow;

  factory TvShow.fromJson(Map<String, dynamic> json) => _$TvShowFromJson(json);
}
