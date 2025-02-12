import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/features/movie_tv_show_details/repository/movie_tv_show_details_repository.dart';
import 'package:movie_app/utils/dependency_injection.dart';

final imdbRatingProvider = FutureProvider.family<String?, int>((ref, id) async {
  final movieDetail =
      await getIt<MovieTvShowDetailsRepository>().fetchMovieDetails(id);
  return await getIt<HomeRepository>().fetchImdbRating(movieDetail.imdbId);
});

// final jokeFutureProvider = FutureProvider<String, String>((ref, param) async {
//   return await HomeRepository().fetchImdbRating(imdbId);
// });
