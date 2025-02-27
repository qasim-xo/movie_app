import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/content/content.dart';

part 'candidate.freezed.dart';
part 'candidate.g.dart';

@freezed
abstract class Candidate with _$Candidate {
  factory Candidate({
    required Content content,
    required String finishReason,
    required double avgLogprobs,
  }) = _Candidate;
  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
}
