import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class HomeState {
  final int page;
  final int topRatedMoviesPage;
  final int upcomingMoviesPage;
  final bool isLoading;
  final List<Movie> trendingMovies;
  final List<Movie> topRatedMovies;
  final List<Movie> upcomingMovies;
  final String? error;

  HomeState({
    required this.page,
    required this.isLoading,
    required this.trendingMovies,
    required this.topRatedMovies,
    required this.upcomingMovies,
    required this.topRatedMoviesPage,
    required this.upcomingMoviesPage,
    this.error,
  });

  factory HomeState.initial() {
    return HomeState(
        isLoading: false,
        trendingMovies: [],
        error: null,
        page: 1,
        topRatedMoviesPage: 1,
        upcomingMoviesPage: 1,
        topRatedMovies: [],
        upcomingMovies: []);
  }

  HomeState copyWith(
      {bool? isLoading,
      List<Movie>? trendingMovies,
      List<Movie>? topRatedMovies,
      List<Movie>? upcomingMovies,
      int? topRatedMoviesPage,
      int? upcomingMoviesPage,
      String? error,
      int? page}) {
    return HomeState(
        topRatedMoviesPage: topRatedMoviesPage ?? this.topRatedMoviesPage,
        upcomingMoviesPage: upcomingMoviesPage ?? this.upcomingMoviesPage,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        trendingMovies: trendingMovies ?? this.trendingMovies,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies,
        error: error ?? this.error,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies);
  }
}

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(HomeState.initial());

  Future<void> fetchTrendingMovies() async {
    state = state.copyWith(isLoading: true);

    try {
      final movies =
          await getIt<HomeRepository>().fetchTrendingMovies(state.page);
      final updatedMovies = [...state.trendingMovies, ...movies];

      state = state.copyWith(
        isLoading: false,
        trendingMovies: updatedMovies,
        page: state.page + 1,
      );
    } catch (e) {
      state = state.copyWith(
          isLoading: false, error: 'Failed to load trending movies');
    }
  }

  Future<void> fetchTopRatedMovies() async {
    try {
      final movies = await getIt<HomeRepository>()
          .fetchTopRatedMovies(state.topRatedMoviesPage);
      final updatedTopRatedMovies = [...state.topRatedMovies, ...movies];

      state = state.copyWith(
          topRatedMovies: updatedTopRatedMovies,
          page: state.topRatedMoviesPage + 1);
    } catch (e) {
      state = state.copyWith(error: 'Failed to load trending movies');
    }
  }

  Future<void> fetchUpcomingMovies() async {
    try {
      final movies = await getIt<HomeRepository>()
          .fetchUpcomingMovies(state.upcomingMoviesPage);
      final updatedUpcomingMoviesPage = [...state.upcomingMovies, ...movies];

      state = state.copyWith(
          upcomingMovies: updatedUpcomingMoviesPage,
          page: state.upcomingMoviesPage + 1);
    } catch (e) {
      state = state.copyWith(error: 'Failed to load trending movies');
    }
  }
}

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(),
);
