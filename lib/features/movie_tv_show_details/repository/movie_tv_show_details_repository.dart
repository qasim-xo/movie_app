import 'package:dio/dio.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/movie_crew/movie_crew.dart';
import 'package:movie_app/models/movie_detail/movie_detail.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class MovieTvShowDetailsRepository {
  Future<MovieDetail> fetchMovieDetails(int id) async {
    try {
      final response = await getIt<Dio>()
          .get('$baseUrl/movie/$id', queryParameters: {'api_key': tmdbApiKey});

      if (response.statusCode == 200) {
        return MovieDetail.fromJson(response.data);
      } else {
        throw Exception('Failed to load movie details');
      }
    } catch (e) {
      throw Exception('Failed to load movie details: $e');
    }
  }

  Future<List<MovieCrew>> getMovieCrewDetails(String movieId) async {
    try {
      final response = await getIt<Dio>().get('$baseUrl/movie/$movieId/credits',
          queryParameters: {'api_key': tmdbApiKey});

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['crew'];
        return data.map((json) => MovieCrew.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load movie details');
      }
    } catch (e) {
      throw Exception('Failed to load movie details: $e');
    }
  }
}
