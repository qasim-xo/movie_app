import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/repository/home_repository.dart';
import 'package:movie_app/features/movie_tv_show_details/repository/movie_tv_show_details_repository.dart';
import 'package:movie_app/models/movie_crew/movie_crew.dart';
import 'package:movie_app/models/movie_detail/movie_detail.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class MovieTvShowDetailsState {
  final bool isExpand;
  final bool isLoading;
  final int id;
  final String imdbRating;
  final MovieDetail movieDetail;
  final List<MovieCrew> movieCrew;
  final String? error;

  MovieTvShowDetailsState(
      {required this.isLoading,
      required this.isExpand,
      required this.movieCrew,
      required this.id,
      required this.movieDetail,
      required this.imdbRating,
      this.error});

  MovieTvShowDetailsState copyWith(
      {bool? isLoading,
      int? id,
      bool? isExpand,
      MovieDetail? movieDetail,
      String? error,
      String? imdbRating,
      List<MovieCrew>? movieCrew}) {
    return MovieTvShowDetailsState(
        isExpand: isExpand ?? this.isExpand,
        movieCrew: movieCrew ?? this.movieCrew,
        isLoading: isLoading ?? this.isLoading,
        id: id ?? this.id,
        movieDetail: movieDetail ?? this.movieDetail,
        imdbRating: imdbRating ?? this.imdbRating,
        error: null);
  }

  factory MovieTvShowDetailsState.initial() {
    return MovieTvShowDetailsState(
      error: null,
      isLoading: false,
      id: 0,
      movieDetail: MovieDetail(),
      movieCrew: [],
      isExpand: false,
      imdbRating: '',
    );
  }
}

class MovieTvShowDetailsNotifier
    extends StateNotifier<MovieTvShowDetailsState> {
  MovieTvShowDetailsNotifier() : super(MovieTvShowDetailsState.initial());

  void setId(int id) {
    state = state.copyWith(id: id);
  }

  void setIsExpand(bool val) {
    state = state.copyWith(isExpand: val);
  }

  void fetchMovieDetails() async {
    state = state.copyWith(isLoading: true);

    try {
      final movieTvShowDetails = await getIt<MovieTvShowDetailsRepository>()
          .fetchMovieDetails(state.id);

      final movieCrew = await getIt<MovieTvShowDetailsRepository>()
          .getMovieCrewDetails(state.id.toString());

      final imdbRating = await getIt<HomeRepository>()
          .fetchImdbRating(movieTvShowDetails.imdbId);

      state = state.copyWith(
        isLoading: false,
        movieDetail: movieTvShowDetails,
        movieCrew: movieCrew,
        imdbRating: imdbRating,
      );
    } catch (e) {
      print(e.toString());
      state = state.copyWith(error: e.toString());
    }
  }

  // void fetchMovieCrewDetails() async {
  //   try {
  //     final movieCrew = await getIt<MovieTvShowDetailsRepository>()
  //         .getMovieCrewDetails(state.id.toString());

  //     state = state.copyWith(
  //       movieCrew: movieCrew,
  //     );
  //   } catch (e) {
  //     print(e.toString());
  //     state = state.copyWith(isLoading: false, error: e.toString());
  //   }
  // }

  // void fetchMovieImdbRating(String imdbId) async {
  //   try {
  //     final imdbRating = await getIt<HomeRepository>().fetchImdbRating(imdbId);

  //     state = state.copyWith(
  //       imdbRating: imdbRating,
  //     );
  //   } catch (e) {
  //     print(e.toString());
  //     state = state.copyWith(error: e.toString());
  //   }
}

final movieTvShowDetailsProvider =
    StateNotifierProvider<MovieTvShowDetailsNotifier, MovieTvShowDetailsState>(
  (ref) => MovieTvShowDetailsNotifier(),
);
