import 'package:flutter_dotenv/flutter_dotenv.dart';

final String apiKey = dotenv.env['API_KEY'] ?? 'default_api_key';
const String baseUrl = "https://api.themoviedb.org/3";

class AssetIcons {
  static const String homeIcon = "assets/icons/home.png";
  static const String tvShowIcon = "assets/icons/tv.png";
  static const String movieIcon = "assets/icons/video-camera.png";
  static const String aiIcon = "assets/icons/ai.png";
}
