import 'package:flutter_dotenv/flutter_dotenv.dart';

final String tmdbApiKey = dotenv.env['API_KEY'] ?? 'default_api_key';
final String omdbApiKey = dotenv.env['OMDB_API_KEY'] ?? 'default_api_key';
final String geminiApiKey = dotenv.env['GEMINI_API_KEY'] ?? 'default_api_key';
