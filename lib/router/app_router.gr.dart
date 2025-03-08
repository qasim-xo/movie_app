// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:movie_app/features/ai_chat/screens/ai_screen.dart' as _i1;
import 'package:movie_app/features/director_info/screens/director_info_screen.dart'
    as _i2;
import 'package:movie_app/features/home/screens/home_screen.dart' as _i3;
import 'package:movie_app/features/movie_tv_show_details/screens/movie_detail_screen.dart'
    as _i4;
import 'package:movie_app/features/movies/screens/movie_screen.dart' as _i5;
import 'package:movie_app/features/navigation/screens/navigation_screen.dart'
    as _i6;
import 'package:movie_app/features/search/screens/search_screen.dart' as _i7;

/// generated route for
/// [_i1.AiScreen]
class AiRoute extends _i8.PageRouteInfo<void> {
  const AiRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AiRoute.name,
          initialChildren: children,
        );

  static const String name = 'AiRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AiScreen();
    },
  );
}

/// generated route for
/// [_i2.DirectorInfoScreen]
class DirectorInfoRoute extends _i8.PageRouteInfo<void> {
  const DirectorInfoRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DirectorInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'DirectorInfoRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.DirectorInfoScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.MovieDetailScreen]
class MovieDetailRoute extends _i8.PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    _i9.Key? key,
    required String id,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailRouteArgs>();
      return _i4.MovieDetailScreen(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i9.Key? key;

  final String id;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.MovieScreen]
class MovieRoute extends _i8.PageRouteInfo<void> {
  const MovieRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MovieRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.MovieScreen();
    },
  );
}

/// generated route for
/// [_i6.NavigationScreen]
class NavigationRoute extends _i8.PageRouteInfo<void> {
  const NavigationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.NavigationScreen();
    },
  );
}

/// generated route for
/// [_i7.SearchScreen]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SearchScreen();
    },
  );
}
