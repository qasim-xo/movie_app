import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  @JsonSerializable(explicitToJson: true)
  factory Movie(
      {@JsonKey(name: 'adult') @Default(false) bool adult,
      @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
      @JsonKey(name: 'genre_ids') @Default([]) List<int> genreIds,
      @JsonKey(name: 'id') @Default(0) int id,
      @JsonKey(name: 'original_language') @Default('') String originalLanguage,
      @JsonKey(name: 'original_title') @Default('') String originalTitle,
      @JsonKey(name: 'overview') @Default('') String overview,
      // @JsonKey(name: 'popularity') @Default(0.0) double popularity,
      @JsonKey(name: 'poster_path') @Default('Not Available') String posterPath,
      @JsonKey(name: 'release_date') @Default('') String releaseDate,
      @JsonKey(name: 'title') @Default('') String title,
      @JsonKey(name: 'video') @Default(false) bool video,
      @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
      @JsonKey(name: 'imdbRating') @Default('') String imdbRating,
      @JsonKey(name: 'vote_count') @Default(0) int voteCount}) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
