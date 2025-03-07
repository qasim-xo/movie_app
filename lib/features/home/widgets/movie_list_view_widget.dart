import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/widgets/movie_show_info_widget.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/router/app_router.gr.dart';

class MovieListViewWidget extends ConsumerWidget {
  const MovieListViewWidget({
    super.key,
    required this.controller,
    required this.movieList,
  });

  final ScrollController controller;
  final List<Movie> movieList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 270,
      child: ListView.separated(
        controller: controller,
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          final movie = movieList[index];

          return GestureDetector(
            onTap: () {
              // ref.read(movieTvShowDetailsProvider.notifier).setId(movie.id);
              context.router.push(MovieDetailRoute(id: movie.id.toString()));
            },
            child: MovieShowInfoWidget(
              id: movie.id.toString(),
              title: movie.title,
              posterUrl: movie.posterPath,
              rating: movie.voteAverage,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
      ),
    );
  }
}
