// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TvShow _$TvShowFromJson(Map<String, dynamic> json) {
  return _TvShow.fromJson(json);
}

/// @nodoc
mixin _$TvShow {
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  List<String> get originCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  String get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowCopyWith<TvShow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowCopyWith<$Res> {
  factory $TvShowCopyWith(TvShow value, $Res Function(TvShow) then) =
      _$TvShowCopyWithImpl<$Res, TvShow>;
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'origin_country') List<String> originCountry,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'first_air_date') String firstAirDate,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'popularity') double popularity});
}

/// @nodoc
class _$TvShowCopyWithImpl<$Res, $Val extends TvShow>
    implements $TvShowCopyWith<$Res> {
  _$TvShowCopyWithImpl(this._value, this._then);

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
    Object? originCountry = null,
    Object? originalLanguage = null,
    Object? originalName = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? firstAirDate = null,
    Object? name = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? popularity = null,
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
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowImplCopyWith<$Res> implements $TvShowCopyWith<$Res> {
  factory _$$TvShowImplCopyWith(
          _$TvShowImpl value, $Res Function(_$TvShowImpl) then) =
      __$$TvShowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'backdrop_path') String backdropPath,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'origin_country') List<String> originCountry,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'first_air_date') String firstAirDate,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'popularity') double popularity});
}

/// @nodoc
class __$$TvShowImplCopyWithImpl<$Res>
    extends _$TvShowCopyWithImpl<$Res, _$TvShowImpl>
    implements _$$TvShowImplCopyWith<$Res> {
  __$$TvShowImplCopyWithImpl(
      _$TvShowImpl _value, $Res Function(_$TvShowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originCountry = null,
    Object? originalLanguage = null,
    Object? originalName = null,
    Object? overview = null,
    Object? posterPath = null,
    Object? firstAirDate = null,
    Object? name = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? popularity = null,
  }) {
    return _then(_$TvShowImpl(
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
      originCountry: null == originCountry
          ? _value._originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TvShowImpl implements _TvShow {
  _$TvShowImpl(
      {@JsonKey(name: 'adult') this.adult = false,
      @JsonKey(name: 'backdrop_path') this.backdropPath = '',
      @JsonKey(name: 'genre_ids') final List<int> genreIds = const [],
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'origin_country')
      final List<String> originCountry = const [],
      @JsonKey(name: 'original_language') this.originalLanguage = '',
      @JsonKey(name: 'original_name') this.originalName = '',
      @JsonKey(name: 'overview') this.overview = '',
      @JsonKey(name: 'poster_path') this.posterPath = 'Not Available',
      @JsonKey(name: 'first_air_date') this.firstAirDate = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'vote_average') this.voteAverage = 0.0,
      @JsonKey(name: 'vote_count') this.voteCount = 0,
      @JsonKey(name: 'popularity') this.popularity = 0.0})
      : _genreIds = genreIds,
        _originCountry = originCountry;

  factory _$TvShowImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowImplFromJson(json);

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
  final List<String> _originCountry;
  @override
  @JsonKey(name: 'origin_country')
  List<String> get originCountry {
    if (_originCountry is EqualUnmodifiableListView) return _originCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originCountry);
  }

  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  @override
  @JsonKey(name: 'overview')
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'first_air_date')
  final String firstAirDate;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;

  @override
  String toString() {
    return 'TvShow(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originCountry: $originCountry, originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, posterPath: $posterPath, firstAirDate: $firstAirDate, name: $name, voteAverage: $voteAverage, voteCount: $voteCount, popularity: $popularity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._originCountry, _originCountry) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      const DeepCollectionEquality().hash(_originCountry),
      originalLanguage,
      originalName,
      overview,
      posterPath,
      firstAirDate,
      name,
      voteAverage,
      voteCount,
      popularity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      __$$TvShowImplCopyWithImpl<_$TvShowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowImplToJson(
      this,
    );
  }
}

abstract class _TvShow implements TvShow {
  factory _TvShow(
      {@JsonKey(name: 'adult') final bool adult,
      @JsonKey(name: 'backdrop_path') final String backdropPath,
      @JsonKey(name: 'genre_ids') final List<int> genreIds,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'origin_country') final List<String> originCountry,
      @JsonKey(name: 'original_language') final String originalLanguage,
      @JsonKey(name: 'original_name') final String originalName,
      @JsonKey(name: 'overview') final String overview,
      @JsonKey(name: 'poster_path') final String posterPath,
      @JsonKey(name: 'first_air_date') final String firstAirDate,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'vote_average') final double voteAverage,
      @JsonKey(name: 'vote_count') final int voteCount,
      @JsonKey(name: 'popularity') final double popularity}) = _$TvShowImpl;

  factory _TvShow.fromJson(Map<String, dynamic> json) = _$TvShowImpl.fromJson;

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
  @JsonKey(name: 'origin_country')
  List<String> get originCountry;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_name')
  String get originalName;
  @override
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'first_air_date')
  String get firstAirDate;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(ignore: true)
  _$$TvShowImplCopyWith<_$TvShowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
