import 'dart:async';
import 'dart:ui';

import 'package:movie_app/models/question/question.dart';

class Debouncer {
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}

List<Question> questions = [
  Question(
      text: 'How are you feeling today', options: ['Sad', 'Happy', 'Neutral']),
  Question(text: 'What comes closest to your occasion?', options: [
    'Just watching a movie by myself',
    'Movie Date',
    'Movie night with friends',
    'Date night with your boyfriend or girlfriend',
    'Watching a movie with your family or relatives'
  ]),
  Question(text: 'Please choose any genre you are interested in ', options: [
    "Action",
    "Adventure",
    "Animation",
    "Biography",
    "Comedy",
    "Crime",
    "Documentary",
    "Drama",
    "Fantasy",
    "Historical",
    "Horror",
    "Musical",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Sports",
    "Superhero",
    "Thriller",
    "War",
    "Western"
  ]),
  Question(text: 'Do age ratings matter to you?', options: ['Yes', 'No'])
];
