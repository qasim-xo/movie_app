import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/features/movie_tv_show_details/repository/movie_tv_show_details_repository.dart';
import 'package:movie_app/utils/dependency_injection.dart';

final imdbRatingProvider =
    FutureProvider.family<String?, String>((ref, imdbId) async {
  return await getIt<HomeRepository>().fetchImdbRating(imdbId);
});
