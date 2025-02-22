import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/features/movies/providers/imdb_rating_provider.dart';
import 'package:movie_app/features/video_player/screens/mobile/video_player_mobile_screen.dart';
import 'package:movie_app/features/video_player/screens/video_player_screen.dart';
import 'package:movie_app/models/movie_crew/movie_crew.dart';
import 'package:movie_app/theme/app_colors.dart';

class MovieDetailMobileScreen extends ConsumerStatefulWidget {
  const MovieDetailMobileScreen({super.key});

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
      ref.read(movieTvShowDetailsProvider.notifier).fetchMovieDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final movieTvShowDetails =
        ref.watch(movieTvShowDetailsProvider).movieDetail;

    final movieCrew = ref.watch(movieTvShowDetailsProvider).movieCrew;
    final isExpand = ref.watch(movieTvShowDetailsProvider).isExpand;

    final director = movieCrew.firstWhereOrNull(
      (crewMember) => crewMember.job == "Director",
    );

    final isLoading = ref.watch(movieTvShowDetailsProvider).isLoading;

    final TextStyle style = const TextStyle(fontSize: 16);
    final double maxWidth = MediaQuery.of(context).size.width; // Example width
    int lineCount =
        getTextLineCount(movieTvShowDetails.overview, maxWidth, style);

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
                                return const Center(
                                    child: CircularProgressIndicator());
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
                          Row(
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
                                      movieTvShowDetails.title,
                                      style: context.textTheme.bodyLarge
                                          ?.copyWith(fontSize: 25),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text('DIRECTED BY'),
                                  Text(
                                    director?.name ?? '',
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          '${movieTvShowDetails.releaseDate.split('-')[0]} • ${movieTvShowDetails.movieLength} min'),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const VideoApp()));
                                        },
                                        child: Text(
                                          'TRAILER',
                                          style: context.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontSize: 16,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold),
                                        ),
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
                                    imageUrl:
                                        '${TmdbApiStrings.imageBaseUrl}/${movieTvShowDetails.posterPath}'),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              ref
                                  .read(movieTvShowDetailsProvider.notifier)
                                  .setIsExpand(!isExpand);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                movieTvShowDetails.tagline.isEmpty ||
                                        movieTvShowDetails.tagline == ''
                                    ? const SizedBox.shrink()
                                    : Text(movieTvShowDetails.tagline
                                        .toUpperCase()),
                                const SizedBox(
                                  height: 15,
                                ),
                                isExpand && lineCount > 3
                                    ? Text(
                                        softWrap: true,
                                        movieTvShowDetails.overview,
                                        style: context.textTheme.bodyMedium,
                                      )
                                    : Text(
                                        movieTvShowDetails.overview,
                                        softWrap: true,
                                        maxLines: 3,
                                      ),
                                Align(
                                  alignment: Alignment.center,
                                  child: (lineCount > 3 && isExpand) ==
                                          false //false && false = false
                                      ? const Icon(Icons.more_horiz)
                                      : const SizedBox.shrink(),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: ScreenPadding.detailScreenPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('RATINGS'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.greyColor),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 15),
                                        child: Image.asset(
                                          AssetIcons.tmdbIcon,
                                          scale: 3.8,
                                        ),
                                      )),
                                  Text(movieTvShowDetails.voteAverage
                                      .toStringAsFixed(1))
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.greyColor),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18, vertical: 15),
                                        child: Image.asset(
                                          AssetIcons.imdbIcon,
                                          scale: 12.4,
                                        ),
                                      )),
                                  Text(imdbRating)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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
