import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/navigation/screens/mob/navigation_mob_screen.dart';
import 'package:movie_app/router/app_router.gr.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class NavigationScreen extends ConsumerStatefulWidget {
  const NavigationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NavigationScreenState();
}

class _NavigationScreenState extends ConsumerState<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      navigatorObservers: () => [HeroController()],
      routes: [HomeRoute()],
      builder: (context, child) {
        final tabRouter = AutoTabsRouter.of(context);
        final selectedIndex = tabRouter.activeIndex;

        return NavigationMobScreen(
            selectedIndex: selectedIndex, tabsRouter: tabRouter, child: child);
      },
    );
  }
}
