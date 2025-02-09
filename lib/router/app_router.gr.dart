// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:movie_app/features/home/screens/home_screen.dart' as _i1;
import 'package:movie_app/features/movie_tv_show_details/screens/movie_detail_screen.dart'
    as _i2;
import 'package:movie_app/features/movies/screens/movie_screen.dart' as _i3;
import 'package:movie_app/features/navigation/screens/navigation_screen.dart'
    as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.MovieDetailScreen]
class MovieDetailRoute extends _i5.PageRouteInfo<void> {
  const MovieDetailRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MovieDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.MovieDetailScreen();
    },
  );
}

/// generated route for
/// [_i3.MovieScreen]
class MovieRoute extends _i5.PageRouteInfo<void> {
  const MovieRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MovieRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.MovieScreen();
    },
  );
}

/// generated route for
/// [_i4.NavigationScreen]
class NavigationRoute extends _i5.PageRouteInfo<void> {
  const NavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.NavigationScreen();
    },
  );
}
