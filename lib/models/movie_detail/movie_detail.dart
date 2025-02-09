import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/movie_genre/movie_genre.dart';
import 'package:movie_app/models/movie_production_companies/movie_production_companies.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
abstract class MovieDetail with _$MovieDetail {
  @JsonSerializable(explicitToJson: true)
  factory MovieDetail(
      // ignore: invalid_annotation_target
      {@JsonKey(name: 'adult') @Default(false) bool adult,
      @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
      @JsonKey(name: 'budget') @Default(0) int budget,
      @JsonKey(name: 'genres') @Default([]) List<MovieGenre> genres,
      @JsonKey(name: 'id') @Default(0) int id,
      @JsonKey(name: 'imdb_id') @Default('') String imdbId,
      @JsonKey(name: 'original_language') @Default('') String originalLanguage,
      @JsonKey(name: 'popularity') @Default(0.0) double popularity,
      @JsonKey(name: 'production_companies')
      @Default([])
      List<MovieProductionCompany> productionCompanies,
      @JsonKey(name: 'release_date') @Default('') String releaseDate,
      @JsonKey(name: 'runtime') @Default(0) int movieLength,
      @JsonKey(name: 'tagline') @Default('') String tagline,
      @JsonKey(name: 'title') @Default('') String title,
      @JsonKey(name: 'vote_average')
      @Default(0.0)
      double voteAverage}) = _MovieDetail;
  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}
