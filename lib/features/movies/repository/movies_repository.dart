import 'package:dio/dio.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/features/movie_tv_show_details/repository/movie_tv_show_details_repository.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/models/movie_detail/movie_detail.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class MoviesRepository {
  Future<List<Movie>> fetchOnSearch(String searchQuery, int page) async {
    try {
      final response = await getIt<Dio>().get('$baseUrl/search/movie',
          queryParameters: {
            'api_key': tmdbApiKey,
            'query': searchQuery,
            'page': page
          });

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['results'];
        List<Movie> movies =
            data.map((movieJson) => Movie.fromJson(movieJson)).toList();

        movies = await Future.wait(movies.map((movie) async {
          MovieDetail movieDetail = await getIt<MovieTvShowDetailsRepository>()
              .fetchMovieDetails(movie.id);
          String? imdbRating = await getIt<HomeRepository>()
                  .fetchImdbRating(movieDetail.imdbId) ??
              'N/A';
          return movie.copyWith(imdbRating: imdbRating);
        }).toList());

        // movie.imdbRating = fetchImdbRating(movieDetail.imdbId);

        return movies;
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }
}
