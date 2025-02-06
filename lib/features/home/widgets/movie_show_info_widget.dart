import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';

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
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              imageUrl: "https://image.tmdb.org/t/p/w500/$posterUrl",
              height: 200,
            )),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 100,
          child: Text("$title ($rating)",
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium?.copyWith(fontSize: 12)),
        )
      ],
    );
  }
}
