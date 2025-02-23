import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/features/movie_tv_show_details/screens/mobile/movie_detail_mobile_screen.dart';

class TaglineOverviewWidget extends ConsumerWidget {
  const TaglineOverviewWidget(
      {super.key, required this.tagline, required this.overview});

  final String tagline;
  final String overview;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpand = ref.watch(movieTvShowDetailsProvider).isExpand;
    final TextStyle style = const TextStyle(fontSize: 16);
    final double maxWidth = MediaQuery.of(context).size.width; // Example width
    int lineCount = getTextLineCount(overview, maxWidth, style);
    return GestureDetector(
      onTap: () {
        ref.read(movieTvShowDetailsProvider.notifier).setIsExpand(!isExpand);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tagline.isEmpty || tagline == ''
              ? const SizedBox.shrink()
              : Text(tagline.toUpperCase()),
          const SizedBox(
            height: 15,
          ),
          isExpand && lineCount > 3
              ? Text(
                  softWrap: true,
                  overview,
                  style: context.textTheme.bodyMedium,
                )
              : Text(
                  overview,
                  softWrap: true,
                  maxLines: 3,
                ),
          Align(
            alignment: Alignment.center,
            child: (lineCount > 3 && isExpand) == false //false && false = false
                ? const Icon(Icons.more_horiz)
                : const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
