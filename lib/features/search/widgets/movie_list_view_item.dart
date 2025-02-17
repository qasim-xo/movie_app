import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/models/tv_show/tv_show.dart';

class MovieListViewItem extends ConsumerWidget {
  const MovieListViewItem({super.key, this.movie, this.tvshow});

  final Movie? movie;
  final TvShow? tvshow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            height: 200,
            width: 150,
            imageUrl: tvshow == null
                ? "${TmdbApiStrings.imageBaseUrl}/${movie?.posterPath}"
                : "${TmdbApiStrings.imageBaseUrl}/${tvshow?.posterPath}",
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              size: 50,
              color: Colors.red,
            ),
          ),
        ),
        Column(
          children: [
            movie == null
                ? Text(tvshow?.name ?? 'No Title Found')
                : Text(movie?.title ?? 'No Title Found')
          ],
        )
      ],
    );
  }
}
