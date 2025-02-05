import 'package:dio/dio.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class HomeRepository {
  Future<List<Movie>> fetchTrendingMovies() async {
    try {
      final response = await getIt<Dio>().get(
        '$baseUrl/trending/movie/week',
        queryParameters: {'api_key': apiKey},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['results'];
        return data.map((movieJson) => Movie.fromJson(movieJson)).toList();
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }
}
