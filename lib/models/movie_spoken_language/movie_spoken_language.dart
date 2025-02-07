import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_spoken_language.freezed.dart';
part 'movie_spoken_language.g.dart';

@freezed
abstract class MovieSpokenLanguage with _$MovieSpokenLanguage {
  @JsonSerializable(explicitToJson: true)
  factory MovieSpokenLanguage({
    @JsonKey(name: 'english_name') @Default('') String englishName,
    @JsonKey(name: 'name') @Default('') String languageName,
  }) = _MovieSpokenLanguage;
  factory MovieSpokenLanguage.fromJson(Map<String, dynamic> json) =>
      _$MovieSpokenLanguageFromJson(json);
}
