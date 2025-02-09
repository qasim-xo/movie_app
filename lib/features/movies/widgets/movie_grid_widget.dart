import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/theme/app_colors.dart';

class MovieGridWidget extends ConsumerWidget {
  const MovieGridWidget(
      {super.key, required this.movies, required this.scrollController});

  final List<Movie> movies;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      controller: scrollController,
      itemCount: movies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: "${TmdbApiStrings.imageBaseUrl}/${movie.posterPath}",
                fit: BoxFit.cover,
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
            Text(
              movie.imdbRating,
              style: context.textTheme.bodyMedium
                  ?.copyWith(color: AppColors.black),
            )
          ],
        );
      },
    );
  }
}
