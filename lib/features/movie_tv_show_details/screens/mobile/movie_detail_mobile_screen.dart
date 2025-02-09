import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
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
      ref.read(movieTvShowDetailsProvider.notifier).fetchMovieDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final movieTvShowDetails =
        ref.watch(movieTvShowDetailsProvider).movieDetail;

    final isLoading = ref.watch(movieTvShowDetailsProvider).isLoading;
    final genreList =
        movieTvShowDetails.genres.map((genre) => genre.name).toList();
    final rating = movieTvShowDetails.voteAverage;

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
                            imageUrl:
                                "${TmdbApiStrings.imageBaseUrl}/${movieTvShowDetails.backdropPath}")),
                  ),
                ];
              },
              body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AssetIcons.starIcon,
                        height: 20,
                        width: 20,
                      ),
                      Text(rating.toString())
                    ],
                  ),
                  Text(
                    movieTvShowDetails.title,
                    style: context.textTheme.bodyMedium
                        ?.copyWith(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(genreList.toString()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text('Release Date'),
                          Text(movieTvShowDetails.releaseDate)
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          const Text('Length'),
                          Text(movieTvShowDetails.movieLength.toString())
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          const Text('Rating'),
                          Text(movieTvShowDetails.voteAverage.toString())
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
