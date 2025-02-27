import 'package:dio/dio.dart';
import 'package:movie_app/constants/api_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/content/content.dart';

class ChatRepo {
  static final ChatRepo _chatRepo = ChatRepo._internal();

  factory ChatRepo() {
    return _chatRepo;
  }

  static ChatRepo get instance => _chatRepo;

  ChatRepo._internal();
  late Dio _dio;

  void configureDio(String baseUrl) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      validateStatus: (status) {
        return status! < 500;
      },
    ));
  }

  Future<String> generateText(List<Content> messages) async {
    try {
      final response = await _dio.post(
        '$geminiBaseUrl?key=$geminiApiKey',
        data: {
          "contents": [
            {
              "role": "user",
              "parts": [
                {
                  "text":
                      "You are an AI movie recommendation system. Don't give answers to unrelated questions."
                }
              ]
            },
            messages.map((e) => e.toJson()).toList()
          ],
          "generationConfig": {
            "temperature": 1,
            "topK": 40,
            "topP": 0.95,
            "maxOutputTokens": 8192,
            "responseMimeType": "text/plain"
          }
        },
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        String text =
            response.data["candidates"][0]["content"]["parts"][0]["text"];

        print("Response: $text");

        return text;
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
}
