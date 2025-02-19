import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/models/tv_show/tv_show.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class HomeState {
  final int selectedTrendingChip;
  final int selectedTopRatedChip;
  final int page;
  final int topRatedMoviesPage;
  final int upcomingMoviesPage;
  final int trendingTvshowsPage;
  final int topRatedTvshowsPage;
  final bool isLoading;
  final List<Movie> trendingMovies;
  final List<Movie> topRatedMovies;
  final List<Movie> upcomingMovies;
  final List<TvShow> trendingTvshows;
  final List<TvShow> topRatedTvshows;
  final String? error;

  HomeState({
    required this.topRatedTvshowsPage,
    required this.selectedTopRatedChip,
    required this.topRatedTvshows,
    required this.trendingTvshowsPage,
    required this.selectedTrendingChip,
    required this.page,
    required this.isLoading,
    required this.trendingMovies,
    required this.topRatedMovies,
    required this.upcomingMovies,
    required this.topRatedMoviesPage,
    required this.upcomingMoviesPage,
    required this.trendingTvshows,
    this.error,
  });

  HomeState copyWith(
      {int? selectedTrendingChip,
      bool? isLoading,
      List<TvShow>? topRatedTvshows,
      int? topRatedTvshowsPage,
      List<Movie>? trendingMovies,
      List<Movie>? topRatedMovies,
      List<Movie>? upcomingMovies,
      int? topRatedMoviesPage,
      int? upcomingMoviesPage,
      List<TvShow>? trendingTvshows,
      int? trendingTvshowsPage,
      String? error,
      int? selectedTopRatedChip,
      int? page}) {
    return HomeState(
        topRatedMoviesPage: topRatedMoviesPage ?? this.topRatedMoviesPage,
        upcomingMoviesPage: upcomingMoviesPage ?? this.upcomingMoviesPage,
        page: page ?? this.page,
        isLoading: isLoading ?? this.isLoading,
        trendingMovies: trendingMovies ?? this.trendingMovies,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies,
        error: error ?? this.error,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        selectedTrendingChip: selectedTrendingChip ?? this.selectedTrendingChip,
        trendingTvshows: trendingTvshows ?? this.trendingTvshows,
        trendingTvshowsPage: trendingTvshowsPage ?? this.trendingTvshowsPage,
        topRatedTvshowsPage: topRatedTvshowsPage ?? this.topRatedTvshowsPage,
        topRatedTvshows: topRatedTvshows ?? this.topRatedTvshows,
        selectedTopRatedChip:
            selectedTopRatedChip ?? this.selectedTopRatedChip);
  }

  factory HomeState.initial() {
    return HomeState(
        isLoading: false,
        trendingMovies: [],
        error: null,
        page: 1,
        topRatedMoviesPage: 1,
        upcomingMoviesPage: 1,
        topRatedMovies: [],
        upcomingMovies: [],
        selectedTrendingChip: 0,
        trendingTvshows: [],
        trendingTvshowsPage: 1,
        topRatedTvshowsPage: 1,
        topRatedTvshows: [],
        selectedTopRatedChip: 0);
  }
}

class HomeNotifier extends Notifier<HomeState> {
  void fetchAllMovies() {
    state = state.copyWith(isLoading: true);
    fetchTopRatedMovies();
    fetchTrendingMovies();
    fetchUpcomingMovies();
    state = state.copyWith(isLoading: false);
  }

  void setTrendingSelectedChip(int index) {
    state = state.copyWith(selectedTrendingChip: index);
  }

  void setTopRatedSelectedChip(int index) {
    state = state.copyWith(selectedTopRatedChip: index);
  }

  Future<void> fetchTrendingMovies() async {
    try {
      final movies =
          await getIt<HomeRepository>().fetchTrendingMovies(state.page);
      final updatedMovies = [...state.trendingMovies, ...movies];

      state = state.copyWith(
        trendingMovies: updatedMovies,
        page: state.page + 1,
      );
    } catch (e) {
      state = state.copyWith(error: 'Failed to load trending movies');
    }
  }

  Future<void> fetchTrendingTvshows() async {
    try {
      final tvShows = await getIt<HomeRepository>()
          .fetchTrendingTvShows(state.trendingTvshowsPage);
      final updatedTvShows = [...state.trendingTvshows, ...tvShows];
      state = state.copyWith(
          trendingTvshows: updatedTvShows,
          trendingTvshowsPage: state.trendingTvshowsPage + 1);
    } catch (e) {
      state = state.copyWith(error: 'Failed to load trending tvshows');
    }
  }

  Future<void> fetchTopRatedTvshows() async {
    try {
      final tvShows = await getIt<HomeRepository>()
          .fetchTopRatedTvshows(state.topRatedTvshowsPage);
      final updatedTvShows = [...state.topRatedTvshows, ...tvShows];
      state = state.copyWith(
          topRatedTvshows: updatedTvShows,
          topRatedTvshowsPage: state.topRatedTvshowsPage + 1);
    } catch (e) {
      state = state.copyWith(error: 'Failed to load trending tvshows');
    }
  }

  Future<void> fetchTopRatedMovies() async {
    try {
      final movies = await getIt<HomeRepository>()
          .fetchTopRatedMovies(state.topRatedMoviesPage);
      final updatedTopRatedMovies = [...state.topRatedMovies, ...movies];

      state = state.copyWith(
          topRatedMovies: updatedTopRatedMovies,
          topRatedMoviesPage: state.topRatedMoviesPage + 1);
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
          upcomingMoviesPage: state.upcomingMoviesPage + 1);
    } catch (e) {
      state = state.copyWith(error: 'Failed to load trending movies');
    }
  }

  @override
  HomeState build() {
    return HomeState.initial();
  }
}

final homeProvider = NotifierProvider<HomeNotifier, HomeState>(
  () => HomeNotifier(),
);

// final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>(
//   () => HomeNotifier(),
// );
