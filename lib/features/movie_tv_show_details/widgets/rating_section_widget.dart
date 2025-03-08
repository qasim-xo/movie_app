import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/theme/app_colors.dart';

class RatingSectionWidget extends ConsumerWidget {
  const RatingSectionWidget(
      {super.key,
      required this.imdbRating,
      required this.tmdbRating,
      required this.isLoading});

  final String imdbRating;
  final String tmdbRating;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                Text(tmdbRating)
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
