import 'package:flutter_dotenv/flutter_dotenv.dart';

final String tmdbApiKey = dotenv.env['API_KEY'] ?? 'default_api_key';
final String omdbApiKey = dotenv.env['OMDB_API_KEY'] ?? 'default_api_key';
const String baseUrl = "https://api.themoviedb.org/3";
const String omdbBaseUrl = "https://www.omdbapi.com";

class TmdbApiStrings {
  static const imageBaseUrl = "https://image.tmdb.org/t/p/original";
  static const imageBaseUrlLowRes = "https://image.tmdb.org/t/p/w92";
}

class AssetIcons {
  static const String assetIconsPath = "assets/icons";

  static const String homeIcon = "$assetIconsPath/home.png";
  static const String tvShowIcon = "$assetIconsPath/tv.png";
  static const String movieIcon = "$assetIconsPath/video-camera.png";
  static const String aiIcon = "$assetIconsPath/ai.png";
  static const String starIcon = "$assetIconsPath/star.png";
}
