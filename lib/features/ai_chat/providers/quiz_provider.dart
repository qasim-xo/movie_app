import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/data_constants.dart';

final quizProvider = StateNotifierProvider<QuizNotifier, List<String?>>(
  (ref) => QuizNotifier(),
);

class QuizNotifier extends StateNotifier<List<String?>> {
  QuizNotifier() : super(List.filled(questions.length, null));

  void selectAnswer(int index, String answer) {
    state = [...state]..[index] = answer;
  }
}
