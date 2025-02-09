import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movies/repository/movies_repository.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/utils/dependency_injection.dart';

final searchMovieProvider = StateProvider<String>((ref) => '');

class MovieState {
  final bool isLoading;
  final List<Movie> movies;
  int page;
  bool isFetchFromNextPage;

  MovieState(
      {required this.isLoading,
      required this.movies,
      required this.page,
      required this.isFetchFromNextPage});

  MovieState copyWith(
      {bool? isLoading,
      List<Movie>? movies,
      int? page,
      bool? isFetchFromNextPage}) {
    return MovieState(
        isFetchFromNextPage: isFetchFromNextPage ?? this.isFetchFromNextPage,
        isLoading: isLoading ?? this.isLoading,
        movies: movies ?? this.movies,
        page: page ?? this.page);
  }

  factory MovieState.initial() {
    return MovieState(
        isLoading: false, movies: [], page: 1, isFetchFromNextPage: false);
  }
}

class MovieNotifier extends Notifier<MovieState> {
  @override
  MovieState build() {
    return MovieState.initial();
  }

  void setIsFetchFromNextPage(bool val) {
    state = state.copyWith(isFetchFromNextPage: val);
  }

  void fetchOnSearch() async {
    state = state.copyWith(isLoading: true);
    final searchQuery = ref.read(searchMovieProvider);
    try {
      if (searchQuery.isNotEmpty) {
        print("first condition");
        if (state.isFetchFromNextPage == true) {
          final searchedMovies = await getIt<MoviesRepository>()
              .fetchOnSearch(searchQuery, state.page + 1);

          final updatedMovies = [...state.movies, ...searchedMovies];
          state = state.copyWith(
            isLoading: false,
            movies: updatedMovies,
            page: state.page + 1,
          );
        } else {
          print("second condition");

          final searchedMovies = await getIt<MoviesRepository>()
              .fetchOnSearch(searchQuery, state.page);
          state = state.copyWith(
            isLoading: false,
            movies: searchedMovies,
            page: 1,
          );
        }
      }
    } catch (e) {
      print(e.toString());
      state = state.copyWith(isLoading: false);
    }
  }
}

final moviesProvider = NotifierProvider<MovieNotifier, MovieState>(
  () => MovieNotifier(),
);
