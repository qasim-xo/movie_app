// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get overview =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'popularity') @Default(0.0) double popularity,
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdbRating')
  String get imdbRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'video') bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'imdbRating') String imdbRating,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? imdbRating = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      imdbRating: null == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'video') bool video,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'imdbRating') String imdbRating,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? imdbRating = null,
    Object? voteCount = null,
  }) {
    return _then(_$MovieImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      imdbRating: null == imdbRating
          ? _value.imdbRating
          : imdbRating // ignore: cast_nullable_to_non_nullable
              as String,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MovieImpl implements _Movie {
  _$MovieImpl(
      {@JsonKey(name: 'adult') this.adult = false,
      @JsonKey(name: 'backdrop_path') this.backdropPath = '',
      @JsonKey(name: 'genre_ids') final List<int> genreIds = const [],
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'original_language') this.originalLanguage = '',
      @JsonKey(name: 'original_title') this.originalTitle = '',
      @JsonKey(name: 'overview') this.overview = '',
      @JsonKey(name: 'poster_path') this.posterPath = 'Not Available',
      @JsonKey(name: 'release_date') this.releaseDate = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'video') this.video = false,
      @JsonKey(name: 'vote_average') this.voteAverage = 0.0,
      @JsonKey(name: 'imdbRating') this.imdbRating = '',
      @JsonKey(name: 'vote_count') this.voteCount = 0})
      : _genreIds = genreIds;

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  @JsonKey(name: 'adult')
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'overview')
  final String overview;
// @JsonKey(name: 'popularity') @Default(0.0) double popularity,
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'video')
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'imdbRating')
  final String imdbRating;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, imdbRating: $imdbRating, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.imdbRating, imdbRating) ||
                other.imdbRating == imdbRating) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      imdbRating,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
      {@JsonKey(name: 'adult') final bool adult,
      @JsonKey(name: 'backdrop_path') final String backdropPath,
      @JsonKey(name: 'genre_ids') final List<int> genreIds,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'original_language') final String originalLanguage,
      @JsonKey(name: 'original_title') final String originalTitle,
      @JsonKey(name: 'overview') final String overview,
      @JsonKey(name: 'poster_path') final String posterPath,
      @JsonKey(name: 'release_date') final String releaseDate,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'video') final bool video,
      @JsonKey(name: 'vote_average') final double voteAverage,
      @JsonKey(name: 'imdbRating') final String imdbRating,
      @JsonKey(name: 'vote_count') final int voteCount}) = _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'overview')
  String get overview;
  @override // @JsonKey(name: 'popularity') @Default(0.0) double popularity,
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'video')
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'imdbRating')
  String get imdbRating;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
