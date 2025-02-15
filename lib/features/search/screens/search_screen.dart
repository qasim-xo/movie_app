import 'package:auto_route/annotations.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/search/screens/mobile/search_mobile_screen.dart';
import 'package:movie_app/features/search/screens/web/search_web_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.of(context).isDesktop
        ? const SearchWebScreen()
        : const SearchMobileScreen();
  }
}
