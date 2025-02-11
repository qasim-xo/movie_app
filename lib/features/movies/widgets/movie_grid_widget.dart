import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glass/glass.dart';
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
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        if (index == movies.length) {
          // Show loading indicator at the bottom
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final movie = movies[index];
        return isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                "${TmdbApiStrings.imageBaseUrl}/${movie.posterPath}",
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
                          SizedBox(
                            height: 50,
                            width: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AssetIcons.starIcon,
                                  height: 15,
                                  width: 15,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  movie.imdbRating,
                                  style: context.textTheme.bodyMedium
                                      ?.copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                          ).asGlass()
                        ],
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    movie.title,
                    style: context.textTheme.bodyMedium
                        ?.copyWith(color: AppColors.black),
                  )
                ],
              );
      },
    );
  }
}
