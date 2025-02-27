import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/models/part/part.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
abstract class Content with _$Content {
  factory Content({
    required List<Part> parts,
    required String role,
  }) = _Content;
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
