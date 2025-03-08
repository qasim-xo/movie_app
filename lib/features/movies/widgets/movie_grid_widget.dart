import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/models/movie/movie.dart';
import 'package:movie_app/theme/app_colors.dart';

class MovieGridWidget extends ConsumerWidget {
  const MovieGridWidget(
      {super.key,
      required this.movies,
      required this.scrollController,
      required this.isLoading});

  final List<Movie> movies;
  final ScrollController scrollController;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      controller: scrollController,
      itemCount: movies.length + (isLoading ? 1 : 0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        childAspectRatio: 0.66,
      ),
      itemBuilder: (context, index) {
        if (index == movies.length) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final movie = movies[index];

        //this is the provider

        return isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        height: 330,
                        width: 250,
                        imageUrl:
                            "${TmdbApiStrings.imageBaseUrl}/${movie.posterPath}",
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Image.network(
                            height: 330,
                            width: 250,
                            fit: BoxFit.cover,
                            "${TmdbApiStrings.imageBaseUrlLowRes}/${movie.posterPath}"),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                          size: 50,
                          color: Colors.red,
                        ),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    movie.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyMedium
                        ?.copyWith(color: AppColors.black),
                  )
                ],
              );
      },
    );
  }
}
