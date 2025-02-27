import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_details.freezed.dart';
part 'token_details.g.dart';

@freezed
abstract class TokenDetails with _$TokenDetails {
  factory TokenDetails({required String modality, required int tokenCount}) =
      _TokenDetails;
  factory TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenDetailsFromJson(json);
}
