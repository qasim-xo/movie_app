import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/shared/widgets/imdb_rating_card.dart';

class MovieShowInfoWidget extends ConsumerWidget {
  const MovieShowInfoWidget(
      {super.key, required this.title, required this.posterUrl, this.rating});

  final String title;
  final String posterUrl;
  final double? rating;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                imageUrl: "${TmdbApiStrings.imageBaseUrl}/$posterUrl",
                height: 200,
                width: 140,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: ImdbRatingCard(
                    rating: rating?.toStringAsFixed(1).toString() ?? ''))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(title,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium?.copyWith(fontSize: 12)),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        )
      ],
    );
  }
}
