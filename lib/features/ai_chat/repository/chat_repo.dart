import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movie_app/constants/api_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/content/content.dart';
import 'package:movie_app/utils/dependency_injection.dart';

Future<String> generateText(List<String?> selectedAnswers) async {
  try {
    final response = await getIt<Dio>().post(
      '$geminiBaseUrl?key=$geminiApiKey',
      data: {
        "contents": [
          {
            "role": "user",
            "parts": [
              {
                "text":
                    "Recommend a movie based on the user's mood (${selectedAnswers[0]}), occasion (${selectedAnswers[1]}}), preferred genre (${selectedAnswers[2]}), and whether age ratings matter (${selectedAnswers[3]}); return the response in JSON format with 'movie_name', 'tmdb_id', and a short 'message' explaining why this movie is recommended. The JSON string should not contain unnecessary characters like square brackets in the beginning and end"
              }
            ]
          },
        ],
        "generationConfig": {
          "temperature": 1,
          "topK": 40,
          "topP": 0.95,
          "maxOutputTokens": 8192,
          "responseMimeType": "application/json"
        }
      },
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      String text =
          response.data["candidates"][0]["content"]["parts"][0]["text"];

      print("Response: $text");

      // Parse the JSON response
      Map<String, dynamic> jsonData = jsonDecode(text.trim());

      // Map<String, dynamic> jsonData = json.decode(json.encode(text));

      // String movieName = jsonData["movie_name"] ?? "Unknown";
      String tmdbId = jsonData["tmdb_id"] ?? '0';
      // String message = jsonData["message"] ?? "";

      // print("Movie Name: $movieName");
      print("TMDB ID: $tmdbId");
      // print("Message: $message");

      return tmdbId;
    } else {
      print("Error: ${response.statusCode} - ${response.data}");

      String error = "${response.statusCode} - ${response.data}";

      return error;
    }
  } catch (e) {
    print("Exception: $e");
    return '';
  }
}
