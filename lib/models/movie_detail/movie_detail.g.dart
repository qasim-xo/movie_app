// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailImpl _$$MovieDetailImplFromJson(Map<String, dynamic> json) =>
    _$MovieDetailImpl(
      adult: json['adult'] as bool? ?? false,
      overview: json['overview'] as String? ?? '',
      backdropPath: json['backdrop_path'] as String? ?? '',
      budget: (json['budget'] as num?)?.toInt() ?? 0,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => MovieGenre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: (json['id'] as num?)?.toInt() ?? 0,
      imdbId: json['imdb_id'] as String? ?? '',
      originalLanguage: json['original_language'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      productionCompanies: (json['production_companies'] as List<dynamic>?)
              ?.map((e) =>
                  MovieProductionCompany.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String? ?? '',
      movieLength: (json['runtime'] as num?)?.toInt() ?? 0,
      tagline: json['tagline'] as String? ?? '',
      title: json['title'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$MovieDetailImplToJson(_$MovieDetailImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'original_language': instance.originalLanguage,
      'popularity': instance.popularity,
      'production_companies':
          instance.productionCompanies.map((e) => e.toJson()).toList(),
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'runtime': instance.movieLength,
      'tagline': instance.tagline,
      'title': instance.title,
      'vote_average': instance.voteAverage,
    };
