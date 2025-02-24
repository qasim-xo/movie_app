import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/director_info/providers/director_provider.dart';
import 'package:movie_app/features/director_info/screens/desktop/director_info_desktop_screen.dart';
import 'package:movie_app/features/director_info/screens/mobile/director_info_mobile_screen.dart';
import 'package:movie_app/models/combined_credits_crew/combined_credits_crew.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class DirectorInfoScreen extends ConsumerWidget {
  const DirectorInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.of(context).isDesktop
        ? const DirectorInfoDesktopScreen()
        : const DirectorInfoMobileScreen();
  }
}
