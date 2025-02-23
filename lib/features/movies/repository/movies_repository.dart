import 'package:dio/dio.dart';
import 'package:movie_app/constants/api_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/features/movie_tv_show_details/repository/movie_tv_show_details_repository.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/models/movie_detail/movie_detail.dart';
import 'package:movie_app/models/tv_show/tv_show.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class MoviesTvShowsRepository {
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

        return movies;
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }

  Future<List<TvShow>> fetchTvShowsOnSearch(
      String searchQuery, int page) async {
    try {
      final response = await getIt<Dio>().get('$baseUrl/search/tv',
          queryParameters: {
            'api_key': tmdbApiKey,
            'query': searchQuery,
            'page': page
          });

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['results'];
        List<TvShow> tvShows =
            data.map((tvShowJson) => TvShow.fromJson(tvShowJson)).toList();

        return tvShows;
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }
}
