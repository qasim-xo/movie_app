import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movie_tv_show_details/repository/movie_tv_show_details_repository.dart';
import 'package:movie_app/models/movie_detail/movie_detail.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class MovieTvShowDetailsState {
  final bool isLoading;
  final int id;
  final MovieDetail movieDetail;
  final String? error;

  MovieTvShowDetailsState(
      {required this.isLoading,
      required this.id,
      required this.movieDetail,
      this.error});

  MovieTvShowDetailsState copyWith(
      {bool? isLoading, int? id, MovieDetail? movieDetail, String? error}) {
    return MovieTvShowDetailsState(
        isLoading: isLoading ?? this.isLoading,
        id: id ?? this.id,
        movieDetail: movieDetail ?? this.movieDetail,
        error: null);
  }

  factory MovieTvShowDetailsState.initial() {
    return MovieTvShowDetailsState(
      error: null,
      isLoading: false,
      id: 0,
      movieDetail: MovieDetail(),
    );
  }
}

class MovieTvShowDetailsNotifier
    extends StateNotifier<MovieTvShowDetailsState> {
  MovieTvShowDetailsNotifier() : super(MovieTvShowDetailsState.initial());

  void setId(int id) {
    state = state.copyWith(id: id);
  }

  void fetchMovieDetails() async {
    state = state.copyWith(isLoading: true);

    try {
      final movieTvShowDetails = await getIt<MovieTvShowDetailsRepository>()
          .fetchMovieDetails(state.id);

      state = state.copyWith(
        isLoading: false,
        movieDetail: movieTvShowDetails,
      );
    } catch (e) {
      print(e.toString());
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final movieTvShowDetailsProvider =
    StateNotifierProvider<MovieTvShowDetailsNotifier, MovieTvShowDetailsState>(
  (ref) => MovieTvShowDetailsNotifier(),
);
