import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movies/screens/mobile/movie_mobile_screen.dart';
import 'package:movie_app/features/movies/screens/web/movie_web_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class MovieScreen extends ConsumerWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.of(context).isDesktop
        ? const MovieWebScreen()
        : const MovieMobileScreen();
  }
}
