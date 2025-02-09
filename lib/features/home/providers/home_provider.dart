import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class TrendingMoviesState {
  final int page;
  final bool isLoading;
  final List<Movie> movies;
  final String? error;

  TrendingMoviesState({
    required this.page,
    required this.isLoading,
    required this.movies,
    this.error,
  });

  factory TrendingMoviesState.initial() {
    return TrendingMoviesState(
      isLoading: false,
      movies: [],
      error: null,
      page: 1,
    );
  }

  TrendingMoviesState copyWith(
      {bool? isLoading, List<Movie>? movies, String? error, int? page}) {
    return TrendingMoviesState(
      page: page ?? this.page,
      isLoading: isLoading ?? this.isLoading,
      movies: movies ?? this.movies,
      error: error ?? this.error,
    );
  }
}

class _TrendingMoviesNotifier extends StateNotifier<TrendingMoviesState> {
  _TrendingMoviesNotifier() : super(TrendingMoviesState.initial());

  Future<void> fetchTrendingMovies() async {
    state = state.copyWith(isLoading: true);

    try {
      final movies =
          await getIt<HomeRepository>().fetchTrendingMovies(state.page);
      final updatedMovies = [...state.movies, ...movies];

      state = state.copyWith(
        isLoading: false,
        movies: updatedMovies,
        page: state.page + 1,
      );
    } catch (e) {
      state = state.copyWith(
          isLoading: false, error: 'Failed to load trending movies');
    }
  }
}

final trendingMoviesProvider =
    StateNotifierProvider<_TrendingMoviesNotifier, TrendingMoviesState>(
  (ref) => _TrendingMoviesNotifier(),
);
