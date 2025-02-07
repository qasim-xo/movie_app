// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_spoken_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieSpokenLanguage _$MovieSpokenLanguageFromJson(Map<String, dynamic> json) {
  return _MovieSpokenLanguage.fromJson(json);
}

/// @nodoc
mixin _$MovieSpokenLanguage {
  @JsonKey(name: 'english_name')
  String get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get languageName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieSpokenLanguageCopyWith<MovieSpokenLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSpokenLanguageCopyWith<$Res> {
  factory $MovieSpokenLanguageCopyWith(
          MovieSpokenLanguage value, $Res Function(MovieSpokenLanguage) then) =
      _$MovieSpokenLanguageCopyWithImpl<$Res, MovieSpokenLanguage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'name') String languageName});
}

/// @nodoc
class _$MovieSpokenLanguageCopyWithImpl<$Res, $Val extends MovieSpokenLanguage>
    implements $MovieSpokenLanguageCopyWith<$Res> {
  _$MovieSpokenLanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? languageName = null,
  }) {
    return _then(_value.copyWith(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieSpokenLanguageImplCopyWith<$Res>
    implements $MovieSpokenLanguageCopyWith<$Res> {
  factory _$$MovieSpokenLanguageImplCopyWith(_$MovieSpokenLanguageImpl value,
          $Res Function(_$MovieSpokenLanguageImpl) then) =
      __$$MovieSpokenLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'english_name') String englishName,
      @JsonKey(name: 'name') String languageName});
}

/// @nodoc
class __$$MovieSpokenLanguageImplCopyWithImpl<$Res>
    extends _$MovieSpokenLanguageCopyWithImpl<$Res, _$MovieSpokenLanguageImpl>
    implements _$$MovieSpokenLanguageImplCopyWith<$Res> {
  __$$MovieSpokenLanguageImplCopyWithImpl(_$MovieSpokenLanguageImpl _value,
      $Res Function(_$MovieSpokenLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? languageName = null,
  }) {
    return _then(_$MovieSpokenLanguageImpl(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MovieSpokenLanguageImpl implements _MovieSpokenLanguage {
  _$MovieSpokenLanguageImpl(
      {@JsonKey(name: 'english_name') this.englishName = '',
      @JsonKey(name: 'name') this.languageName = ''});

  factory _$MovieSpokenLanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieSpokenLanguageImplFromJson(json);

  @override
  @JsonKey(name: 'english_name')
  final String englishName;
  @override
  @JsonKey(name: 'name')
  final String languageName;

  @override
  String toString() {
    return 'MovieSpokenLanguage(englishName: $englishName, languageName: $languageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieSpokenLanguageImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, languageName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieSpokenLanguageImplCopyWith<_$MovieSpokenLanguageImpl> get copyWith =>
      __$$MovieSpokenLanguageImplCopyWithImpl<_$MovieSpokenLanguageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieSpokenLanguageImplToJson(
      this,
    );
  }
}

abstract class _MovieSpokenLanguage implements MovieSpokenLanguage {
  factory _MovieSpokenLanguage(
          {@JsonKey(name: 'english_name') final String englishName,
          @JsonKey(name: 'name') final String languageName}) =
      _$MovieSpokenLanguageImpl;

  factory _MovieSpokenLanguage.fromJson(Map<String, dynamic> json) =
      _$MovieSpokenLanguageImpl.fromJson;

  @override
  @JsonKey(name: 'english_name')
  String get englishName;
  @override
  @JsonKey(name: 'name')
  String get languageName;
  @override
  @JsonKey(ignore: true)
  _$$MovieSpokenLanguageImplCopyWith<_$MovieSpokenLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
