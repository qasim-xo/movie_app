import 'package:auto_route/annotations.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/video_player/screens/mobile/video_player_mobile_screen.dart';
import 'package:movie_app/features/video_player/screens/web/video_player_web_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class VideoPlayerScreen extends ConsumerWidget {
  const VideoPlayerScreen({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.of(context).isDesktop
        ? VideoPlayerWebScreen()
        : VideoApp();
  }
}
