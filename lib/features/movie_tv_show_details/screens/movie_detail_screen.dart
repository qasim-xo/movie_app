import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movie_tv_show_details/screens/mobile/movie_detail_mobile_screen.dart';
import 'package:movie_app/features/movie_tv_show_details/screens/web/movie_detail_web_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class MovieDetailScreen extends ConsumerWidget {
  const MovieDetailScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.of(context).isDesktop
        ? const MovieDetailWebScreen()
        : MovieDetailMobileScreen(
            id: id,
          );
  }
}
