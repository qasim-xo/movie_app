// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsageMetadata _$UsageMetadataFromJson(Map<String, dynamic> json) {
  return _UsageMetadata.fromJson(json);
}

/// @nodoc
mixin _$UsageMetadata {
  int get promptTokenCount => throw _privateConstructorUsedError;
  int get candidatesTokenCount => throw _privateConstructorUsedError;
  int get totalTokenCount => throw _privateConstructorUsedError;
  List<TokenDetails> get promptTokensDetails =>
      throw _privateConstructorUsedError;
  List<TokenDetails> get candidatesTokensDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageMetadataCopyWith<UsageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageMetadataCopyWith<$Res> {
  factory $UsageMetadataCopyWith(
          UsageMetadata value, $Res Function(UsageMetadata) then) =
      _$UsageMetadataCopyWithImpl<$Res, UsageMetadata>;
  @useResult
  $Res call(
      {int promptTokenCount,
      int candidatesTokenCount,
      int totalTokenCount,
      List<TokenDetails> promptTokensDetails,
      List<TokenDetails> candidatesTokensDetails});
}

/// @nodoc
class _$UsageMetadataCopyWithImpl<$Res, $Val extends UsageMetadata>
    implements $UsageMetadataCopyWith<$Res> {
  _$UsageMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokenCount = null,
    Object? candidatesTokenCount = null,
    Object? totalTokenCount = null,
    Object? promptTokensDetails = null,
    Object? candidatesTokensDetails = null,
  }) {
    return _then(_value.copyWith(
      promptTokenCount: null == promptTokenCount
          ? _value.promptTokenCount
          : promptTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      candidatesTokenCount: null == candidatesTokenCount
          ? _value.candidatesTokenCount
          : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokenCount: null == totalTokenCount
          ? _value.totalTokenCount
          : totalTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokensDetails: null == promptTokensDetails
          ? _value.promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<TokenDetails>,
      candidatesTokensDetails: null == candidatesTokensDetails
          ? _value.candidatesTokensDetails
          : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<TokenDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageMetadataImplCopyWith<$Res>
    implements $UsageMetadataCopyWith<$Res> {
  factory _$$UsageMetadataImplCopyWith(
          _$UsageMetadataImpl value, $Res Function(_$UsageMetadataImpl) then) =
      __$$UsageMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int promptTokenCount,
      int candidatesTokenCount,
      int totalTokenCount,
      List<TokenDetails> promptTokensDetails,
      List<TokenDetails> candidatesTokensDetails});
}

/// @nodoc
class __$$UsageMetadataImplCopyWithImpl<$Res>
    extends _$UsageMetadataCopyWithImpl<$Res, _$UsageMetadataImpl>
    implements _$$UsageMetadataImplCopyWith<$Res> {
  __$$UsageMetadataImplCopyWithImpl(
      _$UsageMetadataImpl _value, $Res Function(_$UsageMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokenCount = null,
    Object? candidatesTokenCount = null,
    Object? totalTokenCount = null,
    Object? promptTokensDetails = null,
    Object? candidatesTokensDetails = null,
  }) {
    return _then(_$UsageMetadataImpl(
      promptTokenCount: null == promptTokenCount
          ? _value.promptTokenCount
          : promptTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      candidatesTokenCount: null == candidatesTokenCount
          ? _value.candidatesTokenCount
          : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokenCount: null == totalTokenCount
          ? _value.totalTokenCount
          : totalTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokensDetails: null == promptTokensDetails
          ? _value._promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<TokenDetails>,
      candidatesTokensDetails: null == candidatesTokensDetails
          ? _value._candidatesTokensDetails
          : candidatesTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<TokenDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageMetadataImpl implements _UsageMetadata {
  _$UsageMetadataImpl(
      {required this.promptTokenCount,
      required this.candidatesTokenCount,
      required this.totalTokenCount,
      required final List<TokenDetails> promptTokensDetails,
      required final List<TokenDetails> candidatesTokensDetails})
      : _promptTokensDetails = promptTokensDetails,
        _candidatesTokensDetails = candidatesTokensDetails;

  factory _$UsageMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageMetadataImplFromJson(json);

  @override
  final int promptTokenCount;
  @override
  final int candidatesTokenCount;
  @override
  final int totalTokenCount;
  final List<TokenDetails> _promptTokensDetails;
  @override
  List<TokenDetails> get promptTokensDetails {
    if (_promptTokensDetails is EqualUnmodifiableListView)
      return _promptTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promptTokensDetails);
  }

  final List<TokenDetails> _candidatesTokensDetails;
  @override
  List<TokenDetails> get candidatesTokensDetails {
    if (_candidatesTokensDetails is EqualUnmodifiableListView)
      return _candidatesTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidatesTokensDetails);
  }

  @override
  String toString() {
    return 'UsageMetadata(promptTokenCount: $promptTokenCount, candidatesTokenCount: $candidatesTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, candidatesTokensDetails: $candidatesTokensDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageMetadataImpl &&
            (identical(other.promptTokenCount, promptTokenCount) ||
                other.promptTokenCount == promptTokenCount) &&
            (identical(other.candidatesTokenCount, candidatesTokenCount) ||
                other.candidatesTokenCount == candidatesTokenCount) &&
            (identical(other.totalTokenCount, totalTokenCount) ||
                other.totalTokenCount == totalTokenCount) &&
            const DeepCollectionEquality()
                .equals(other._promptTokensDetails, _promptTokensDetails) &&
            const DeepCollectionEquality().equals(
                other._candidatesTokensDetails, _candidatesTokensDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      promptTokenCount,
      candidatesTokenCount,
      totalTokenCount,
      const DeepCollectionEquality().hash(_promptTokensDetails),
      const DeepCollectionEquality().hash(_candidatesTokensDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageMetadataImplCopyWith<_$UsageMetadataImpl> get copyWith =>
      __$$UsageMetadataImplCopyWithImpl<_$UsageMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageMetadataImplToJson(
      this,
    );
  }
}

abstract class _UsageMetadata implements UsageMetadata {
  factory _UsageMetadata(
          {required final int promptTokenCount,
          required final int candidatesTokenCount,
          required final int totalTokenCount,
          required final List<TokenDetails> promptTokensDetails,
          required final List<TokenDetails> candidatesTokensDetails}) =
      _$UsageMetadataImpl;

  factory _UsageMetadata.fromJson(Map<String, dynamic> json) =
      _$UsageMetadataImpl.fromJson;

  @override
  int get promptTokenCount;
  @override
  int get candidatesTokenCount;
  @override
  int get totalTokenCount;
  @override
  List<TokenDetails> get promptTokensDetails;
  @override
  List<TokenDetails> get candidatesTokensDetails;
  @override
  @JsonKey(ignore: true)
  _$$UsageMetadataImplCopyWith<_$UsageMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
