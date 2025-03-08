import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/features/home/widgets/rating_sheet_widget.dart';

class MovieTvSettingsSheet extends ConsumerWidget {
  const MovieTvSettingsSheet(
      {super.key,
      required this.movieTvShowTitle,
      required this.id,
      required this.tmdbRating});

  final String movieTvShowTitle;
  final String tmdbRating;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            movieTvShowTitle,
            style: context.textTheme.bodyMedium
                ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              // final imdbRating =
              //     ref.read(movieTvShowDetailsProvider).imdbRating;

              // final isLoading = ref.read(movieTvShowDetailsProvider).isLoading;

              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: RatingSheetWidget(
                        tmdbRating: tmdbRating,
                        id: id,
                      ),
                    );
                  });
            },
            child: const Row(
              children: [
                Icon(Icons.star),
                SizedBox(
                  width: 10,
                ),
                Text('All Ratings')
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Icon(Icons.list),
              SizedBox(
                width: 10,
              ),
              Text('Add to watchlist')
            ],
          )
        ],
      ),
    );
  }
}
