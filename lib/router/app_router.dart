import 'package:auto_route/auto_route.dart';
import 'package:movie_app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: SearchRoute.page),
      AutoRoute(initial: true, page: NavigationRoute.page, children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: MovieRoute.page),
        AutoRoute(page: AiRoute.page)
      ]),
      AutoRoute(page: MovieDetailRoute.page),
      AutoRoute(page: DirectorInfoRoute.page)
    ];
  }
}
