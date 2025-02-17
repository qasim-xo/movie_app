import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/features/movies/providers/movie_provider.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/models/tv_show/tv_show.dart';
import 'package:movie_app/utils/dependency_injection.dart';

import '../../movies/repository/movies_repository.dart';

final searchMovieProvider = StateProvider<String>((ref) => '');

class SearchState {
  final int activeTab;
  final bool isMoviesLoading;
  final List<Movie> movies;
  final List<TvShow> tvShows;
  final int page;
  final int tvshowPage;
  final bool isFetchMoviesFromNextPage;
  final bool isFetchTvshowsFromNextPage;

  SearchState(
      {required this.tvShows,
      required this.activeTab,
      required this.isMoviesLoading,
      required this.movies,
      required this.page,
      required this.tvshowPage,
      required this.isFetchTvshowsFromNextPage,
      required this.isFetchMoviesFromNextPage});

  SearchState copyWith(
      {int? activeTab,
      bool? isMoviesLoading,
      List<Movie>? movies,
      int? page,
      int? tvshowPage,
      List<TvShow>? tvShows,
      bool? isFetchTvshowsFromNextPage,
      bool? isFetchMoviesFromNextPage}) {
    return SearchState(
        tvshowPage: tvshowPage ?? this.tvshowPage,
        tvShows: tvShows ?? this.tvShows,
        activeTab: activeTab ?? this.activeTab,
        isFetchMoviesFromNextPage:
            isFetchMoviesFromNextPage ?? this.isFetchMoviesFromNextPage,
        isMoviesLoading: isMoviesLoading ?? this.isMoviesLoading,
        movies: movies ?? this.movies,
        isFetchTvshowsFromNextPage:
            isFetchTvshowsFromNextPage ?? this.isFetchTvshowsFromNextPage,
        page: page ?? this.page);
  }

  factory SearchState.initial() {
    return SearchState(
        tvshowPage: 1,
        tvShows: [],
        isMoviesLoading: false,
        movies: [],
        page: 1,
        isFetchTvshowsFromNextPage: false,
        isFetchMoviesFromNextPage: false,
        activeTab: 0);
  }
}

class SearchNotifier extends Notifier<SearchState> {
  @override
  SearchState build() {
    return SearchState.initial();
  }

  void clearLists() {
    state = state.copyWith(movies: [], tvShows: [], activeTab: 0);
  }

  void setIsFetchMoviesFromNextPage(bool val) {
    state = state.copyWith(isFetchMoviesFromNextPage: val);
  }

  void setIsFetchTvshowsFromNextPage(bool val) {
    state = state.copyWith(isFetchTvshowsFromNextPage: val);
  }

  void setActiveTab(int index) {
    state = state.copyWith(activeTab: index);
  }

  // void fetchImdbRating(String imdbId) {
  //   final rating = getIt<MoviesRepository>().fetchImdbRating(imdbId);
  //   if (rating != null) {
  //     final updatedMovies = state.movies
  //         .map((movie) => movie.imdbId == imdbId
  //             ? movie.copyWith(imdbRating: rating)
  //             : movie)
  //         .toList();
  //     state = state.copyWith(movies: updatedMovies);
  //   }
  // }

  void fetchOnSearch() async {
    state = state.copyWith(isMoviesLoading: true);
    final searchQuery = ref.read(searchMovieProvider);
    try {
      if (searchQuery.isNotEmpty) {
        print("first condition");
        if (state.isFetchMoviesFromNextPage == true) {
          final searchedMovies = await getIt<MoviesTvShowsRepository>()
              .fetchOnSearch(searchQuery, state.page + 1);

          final updatedMovies = [...state.movies, ...searchedMovies];
          state = state.copyWith(
            isMoviesLoading: false,
            movies: updatedMovies,
            page: state.page + 1,
          );
        } else {
          print("second condition");

          final searchedMovies = await getIt<MoviesTvShowsRepository>()
              .fetchOnSearch(searchQuery, state.page);
          state = state.copyWith(
            isMoviesLoading: false,
            movies: searchedMovies,
            page: 1,
          );
        }
      } else {
        state = state.copyWith(isMoviesLoading: false, movies: []);
      }
    } catch (e) {
      print(e.toString());
      state = state.copyWith(isMoviesLoading: false);
    }
  }

  void fetchTvShowsOnSearch() async {
    state = state.copyWith(isMoviesLoading: true);
    final searchQuery = ref.read(searchMovieProvider);
    try {
      if (searchQuery.isNotEmpty) {
        print("first condition");
        if (state.isFetchTvshowsFromNextPage == true) {
          final searchedTvshows = await getIt<MoviesTvShowsRepository>()
              .fetchTvShowsOnSearch(searchQuery, state.tvshowPage + 1);

          final updatedTvshows = [...state.tvShows, ...searchedTvshows];
          state = state.copyWith(
            isMoviesLoading: false,
            tvShows: updatedTvshows,
            page: state.tvshowPage + 1,
          );
        } else {
          print("second condition");

          final searchedTvshows = await getIt<MoviesTvShowsRepository>()
              .fetchTvShowsOnSearch(searchQuery, state.tvshowPage);
          state = state.copyWith(
            isMoviesLoading: false,
            tvShows: searchedTvshows,
            page: 1,
          );
        }
      } else {
        state = state.copyWith(isMoviesLoading: false, tvShows: []);
      }
    } catch (e) {
      print(e.toString());
      state = state.copyWith(isMoviesLoading: false);
    }
  }
}

final searchProvider = NotifierProvider<SearchNotifier, SearchState>(
  () => SearchNotifier(),
);
