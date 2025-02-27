// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenDetails _$TokenDetailsFromJson(Map<String, dynamic> json) {
  return _TokenDetails.fromJson(json);
}

/// @nodoc
mixin _$TokenDetails {
  String get modality => throw _privateConstructorUsedError;
  int get tokenCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDetailsCopyWith<TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsCopyWith<$Res> {
  factory $TokenDetailsCopyWith(
          TokenDetails value, $Res Function(TokenDetails) then) =
      _$TokenDetailsCopyWithImpl<$Res, TokenDetails>;
  @useResult
  $Res call({String modality, int tokenCount});
}

/// @nodoc
class _$TokenDetailsCopyWithImpl<$Res, $Val extends TokenDetails>
    implements $TokenDetailsCopyWith<$Res> {
  _$TokenDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modality = null,
    Object? tokenCount = null,
  }) {
    return _then(_value.copyWith(
      modality: null == modality
          ? _value.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as String,
      tokenCount: null == tokenCount
          ? _value.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDetailsImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$TokenDetailsImplCopyWith(
          _$TokenDetailsImpl value, $Res Function(_$TokenDetailsImpl) then) =
      __$$TokenDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String modality, int tokenCount});
}

/// @nodoc
class __$$TokenDetailsImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$TokenDetailsImpl>
    implements _$$TokenDetailsImplCopyWith<$Res> {
  __$$TokenDetailsImplCopyWithImpl(
      _$TokenDetailsImpl _value, $Res Function(_$TokenDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modality = null,
    Object? tokenCount = null,
  }) {
    return _then(_$TokenDetailsImpl(
      modality: null == modality
          ? _value.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as String,
      tokenCount: null == tokenCount
          ? _value.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDetailsImpl implements _TokenDetails {
  _$TokenDetailsImpl({required this.modality, required this.tokenCount});

  factory _$TokenDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDetailsImplFromJson(json);

  @override
  final String modality;
  @override
  final int tokenCount;

  @override
  String toString() {
    return 'TokenDetails(modality: $modality, tokenCount: $tokenCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDetailsImpl &&
            (identical(other.modality, modality) ||
                other.modality == modality) &&
            (identical(other.tokenCount, tokenCount) ||
                other.tokenCount == tokenCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, modality, tokenCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDetailsImplCopyWith<_$TokenDetailsImpl> get copyWith =>
      __$$TokenDetailsImplCopyWithImpl<_$TokenDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDetailsImplToJson(
      this,
    );
  }
}

abstract class _TokenDetails implements TokenDetails {
  factory _TokenDetails(
      {required final String modality,
      required final int tokenCount}) = _$TokenDetailsImpl;

  factory _TokenDetails.fromJson(Map<String, dynamic> json) =
      _$TokenDetailsImpl.fromJson;

  @override
  String get modality;
  @override
  int get tokenCount;
  @override
  @JsonKey(ignore: true)
  _$$TokenDetailsImplCopyWith<_$TokenDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
