import 'package:auto_route/auto_route.dart';
import 'package:movie_app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  // TODO: implement routes
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(
          initial: true,
          page: NavigationRoute.page,
          children: [AutoRoute(page: HomeRoute.page)])
    ];
  }
}
