import 'package:dio/dio.dart';
import 'package:movie_app/constants/api_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/combined_credits_crew/combined_credits_crew.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class DirectorRepository {
  Future<List<CombinedCreditsCrew>> getMovieCrewCombinedCredits(
      String personId) async {
    try {
      final response = await getIt<Dio>().get(
          '$baseUrl/person/$personId/combined_credits',
          queryParameters: {'api_key': tmdbApiKey});

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['crew'];
        return data.map((json) => CombinedCreditsCrew.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load movie details');
      }
    } catch (e) {
      throw Exception('Failed to load movie details: $e');
    }
  }
}
