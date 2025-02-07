// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_production_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieProductionCompany _$MovieProductionCompanyFromJson(
    Map<String, dynamic> json) {
  return _MovieProductionCompanies.fromJson(json);
}

/// @nodoc
mixin _$MovieProductionCompany {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieProductionCompanyCopyWith<MovieProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieProductionCompanyCopyWith<$Res> {
  factory $MovieProductionCompanyCopyWith(MovieProductionCompany value,
          $Res Function(MovieProductionCompany) then) =
      _$MovieProductionCompanyCopyWithImpl<$Res, MovieProductionCompany>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'logo_path') String logoPath,
      @JsonKey(name: 'name') String companyName,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class _$MovieProductionCompanyCopyWithImpl<$Res,
        $Val extends MovieProductionCompany>
    implements $MovieProductionCompanyCopyWith<$Res> {
  _$MovieProductionCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = null,
    Object? companyName = null,
    Object? originCountry = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieProductionCompaniesImplCopyWith<$Res>
    implements $MovieProductionCompanyCopyWith<$Res> {
  factory _$$MovieProductionCompaniesImplCopyWith(
          _$MovieProductionCompaniesImpl value,
          $Res Function(_$MovieProductionCompaniesImpl) then) =
      __$$MovieProductionCompaniesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'logo_path') String logoPath,
      @JsonKey(name: 'name') String companyName,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class __$$MovieProductionCompaniesImplCopyWithImpl<$Res>
    extends _$MovieProductionCompanyCopyWithImpl<$Res,
        _$MovieProductionCompaniesImpl>
    implements _$$MovieProductionCompaniesImplCopyWith<$Res> {
  __$$MovieProductionCompaniesImplCopyWithImpl(
      _$MovieProductionCompaniesImpl _value,
      $Res Function(_$MovieProductionCompaniesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logoPath = null,
    Object? companyName = null,
    Object? originCountry = null,
  }) {
    return _then(_$MovieProductionCompaniesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      originCountry: null == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MovieProductionCompaniesImpl implements _MovieProductionCompanies {
  _$MovieProductionCompaniesImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'logo_path') this.logoPath = '',
      @JsonKey(name: 'name') this.companyName = '',
      @JsonKey(name: 'origin_country') this.originCountry = ''});

  factory _$MovieProductionCompaniesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieProductionCompaniesImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  final String logoPath;
  @override
  @JsonKey(name: 'name')
  final String companyName;
  @override
  @JsonKey(name: 'origin_country')
  final String originCountry;

  @override
  String toString() {
    return 'MovieProductionCompany(id: $id, logoPath: $logoPath, companyName: $companyName, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieProductionCompaniesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, companyName, originCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieProductionCompaniesImplCopyWith<_$MovieProductionCompaniesImpl>
      get copyWith => __$$MovieProductionCompaniesImplCopyWithImpl<
          _$MovieProductionCompaniesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieProductionCompaniesImplToJson(
      this,
    );
  }
}

abstract class _MovieProductionCompanies implements MovieProductionCompany {
  factory _MovieProductionCompanies(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'logo_path') final String logoPath,
          @JsonKey(name: 'name') final String companyName,
          @JsonKey(name: 'origin_country') final String originCountry}) =
      _$MovieProductionCompaniesImpl;

  factory _MovieProductionCompanies.fromJson(Map<String, dynamic> json) =
      _$MovieProductionCompaniesImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  String get logoPath;
  @override
  @JsonKey(name: 'name')
  String get companyName;
  @override
  @JsonKey(name: 'origin_country')
  String get originCountry;
  @override
  @JsonKey(ignore: true)
  _$$MovieProductionCompaniesImplCopyWith<_$MovieProductionCompaniesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
