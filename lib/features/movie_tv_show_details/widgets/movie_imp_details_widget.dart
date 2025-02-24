import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/director_info/providers/director_provider.dart';
import 'package:movie_app/router/app_router.gr.dart';

class MovieImpDetailsWidget extends ConsumerWidget {
  const MovieImpDetailsWidget({
    super.key,
    required this.title,
    required this.director,
    required this.releaseDate,
    required this.movieLength,
    required this.posterPath,
    required this.personId,
  });

  final String title;
  final String director;
  final String releaseDate;
  final String movieLength;
  final String posterPath;
  final String personId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 170,
              child: Text(
                maxLines: 3,
                title,
                style: context.textTheme.bodyLarge?.copyWith(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text('DIRECTED BY'),
            GestureDetector(
              onTap: () {
                ref
                    .read(directorProvider.notifier)
                    .fetchCombinedCrewCredits(personId);

                context.router.push(const DirectorInfoRoute());
              },
              child: Text(
                director ?? '',
                style: context.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('${releaseDate.split('-')[0]} • $movieLength min'),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  'TRAILER',
                  style: context.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: CachedNetworkImage(
              height: 170,
              fit: BoxFit.cover,
              imageUrl: '${TmdbApiStrings.imageBaseUrl}/$posterPath'),
        )
      ],
    );
  }
}
