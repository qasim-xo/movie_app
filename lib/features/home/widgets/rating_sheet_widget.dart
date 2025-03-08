import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/theme/app_colors.dart';

class RatingSheetWidget extends ConsumerStatefulWidget {
  const RatingSheetWidget(
      {super.key, required this.id, required this.tmdbRating});

  final String id;
  final String tmdbRating;

  @override
  ConsumerState<RatingSheetWidget> createState() => _RatingSheetWidgetState();
}

class _RatingSheetWidgetState extends ConsumerState<RatingSheetWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(movieTvShowDetailsProvider.notifier)
          .fetchMovieDetails(id: widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final imdbRating = ref.watch(movieTvShowDetailsProvider).imdbRating;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('RATINGS'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.greyColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Image.asset(
                        AssetIcons.tmdbIcon,
                        scale: 3.8,
                      ),
                    )),
                Text(widget.tmdbRating)
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.greyColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 15),
                    child: Image.asset(
                      AssetIcons.imdbIcon,
                      scale: 12.4,
                    ),
                  ),
                ),
                Text(imdbRating)
              ],
            )
          ],
        )
      ],
    );
  }
}
