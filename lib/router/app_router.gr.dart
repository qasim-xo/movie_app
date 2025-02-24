// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:movie_app/features/director_info/screens/director_info_screen.dart'
    as _i1;
import 'package:movie_app/features/home/screens/home_screen.dart' as _i2;
import 'package:movie_app/features/movie_tv_show_details/screens/movie_detail_screen.dart'
    as _i3;
import 'package:movie_app/features/movies/screens/movie_screen.dart' as _i4;
import 'package:movie_app/features/navigation/screens/navigation_screen.dart'
    as _i5;
import 'package:movie_app/features/search/screens/search_screen.dart' as _i6;

/// generated route for
/// [_i1.DirectorInfoScreen]
class DirectorInfoRoute extends _i7.PageRouteInfo<void> {
  const DirectorInfoRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DirectorInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'DirectorInfoRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.DirectorInfoScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.MovieDetailScreen]
class MovieDetailRoute extends _i7.PageRouteInfo<void> {
  const MovieDetailRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MovieDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.MovieDetailScreen();
    },
  );
}

/// generated route for
/// [_i4.MovieScreen]
class MovieRoute extends _i7.PageRouteInfo<void> {
  const MovieRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MovieRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.MovieScreen();
    },
  );
}

/// generated route for
/// [_i5.NavigationScreen]
class NavigationRoute extends _i7.PageRouteInfo<void> {
  const NavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavigationScreen();
    },
  );
}

/// generated route for
/// [_i6.SearchScreen]
class SearchRoute extends _i7.PageRouteInfo<void> {
  const SearchRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SearchScreen();
    },
  );
}
