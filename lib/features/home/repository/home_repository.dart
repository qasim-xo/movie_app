import 'package:dio/dio.dart';
import 'package:movie_app/constants/api_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/models/tv_show/tv_show.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class HomeRepository {
  Future<List<Movie>> fetchTrendingMovies(int page) async {
    try {
      final response = await getIt<Dio>().get(
        '$baseUrl/movie/popular',
        queryParameters: {'api_key': tmdbApiKey, 'page': page},
      );

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

  Future<List<TvShow>> fetchTrendingTvShows(int page) async {
    try {
      final response = await getIt<Dio>().get(
        '$baseUrl/tv/popular',
        queryParameters: {'api_key': tmdbApiKey, 'page': page},
      );

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

  Future<List<Movie>> fetchTopRatedMovies(int page) async {
    try {
      final response = await getIt<Dio>().get(
        '$baseUrl/movie/top_rated',
        queryParameters: {'api_key': tmdbApiKey, 'page': page},
      );

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

  Future<List<TvShow>> fetchTopRatedTvshows(int page) async {
    try {
      final response = await getIt<Dio>().get(
        '$baseUrl/tv/top_rated',
        queryParameters: {'api_key': tmdbApiKey, 'page': page},
      );

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

  Future<List<Movie>> fetchUpcomingMovies(int page) async {
    try {
      final response = await getIt<Dio>().get(
        '$baseUrl/movie/upcoming',
        queryParameters: {'api_key': tmdbApiKey, 'page': page},
      );

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

  Future<String?> fetchImdbRating(String? imdbId) async {
    try {
      if (imdbId != null || imdbId != '') {
        final response = await getIt<Dio>().get(
          '$omdbBaseUrl/',
          queryParameters: {'apikey': omdbApiKey, 'i': imdbId},
        );
        if (response.statusCode == 200) {
          String imdbRating = response.data['imdbRating'] ?? 'N/A';
          return imdbRating;
        } else {
          print("you got it");
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      print("you got it ${e.toString()}");
      return null;
    }
  }
}
