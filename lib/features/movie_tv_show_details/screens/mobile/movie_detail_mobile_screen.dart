import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/features/movie_tv_show_details/widgets/movie_imp_details_widget.dart';
import 'package:movie_app/features/movie_tv_show_details/widgets/rating_section_widget.dart';
import 'package:movie_app/theme/app_colors.dart';

class MovieDetailMobileScreen extends ConsumerStatefulWidget {
  const MovieDetailMobileScreen({super.key, required this.id});

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDetailMobileScreenState();
}

class _MovieDetailMobileScreenState
    extends ConsumerState<MovieDetailMobileScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(movieTvShowDetailsProvider.notifier).setIsExpand(false);
      ref
          .read(movieTvShowDetailsProvider.notifier)
          .fetchMovieDetails(id: widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final movieTvShowDetails =
        ref.watch(movieTvShowDetailsProvider).movieDetail;
    final movieCrew = ref.watch(movieTvShowDetailsProvider).movieCrew;
    final director = movieCrew.firstWhereOrNull(
      (crewMember) => crewMember.job == "Director",
    );
    final isLoading = ref.watch(movieTvShowDetailsProvider).isLoading;
    final imdbRating = ref.watch(movieTvShowDetailsProvider).imdbRating;

    return isLoading
        ? const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          )
        : Scaffold(
            body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      iconTheme: const IconThemeData(color: AppColors.white),
                      expandedHeight: 200.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                          background: CachedNetworkImage(
                              fit: BoxFit.cover,
                              placeholder: (context, url) {
                                return Image.network(
                                  '${TmdbApiStrings.imageBaseUrlLowRes}/${movieTvShowDetails.backdropPath}',
                                  fit: BoxFit.cover,
                                );
                              },
                              errorWidget: (context, url, error) {
                                return const Icon(Icons.error);
                              },
                              imageUrl:
                                  "${TmdbApiStrings.imageBaseUrl}/${movieTvShowDetails.backdropPath}")),
                    ),
                  ];
                },
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: ScreenPadding.detailScreenPadding,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MovieImpDetailsWidget(
                            title: movieTvShowDetails.title,
                            director: director?.name ?? '',
                            releaseDate: movieTvShowDetails.releaseDate,
                            movieLength: movieTvShowDetails.releaseDate,
                            posterPath: movieTvShowDetails.posterPath,
                            personId: director?.id.toString() ?? '',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                        padding: ScreenPadding.detailScreenPadding,
                        child: RatingSectionWidget(
                            isLoading: isLoading,
                            imdbRating: imdbRating,
                            tmdbRating: movieTvShowDetails.voteAverage
                                .toStringAsFixed(2))),
                  ],
                )),
          );
  }
}

int getTextLineCount(
  String text,
  double maxWidth,
  TextStyle style,
) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    textDirection: TextDirection.ltr,
    maxLines: null,
  )..layout(maxWidth: maxWidth);

  return textPainter.computeLineMetrics().length;
}
