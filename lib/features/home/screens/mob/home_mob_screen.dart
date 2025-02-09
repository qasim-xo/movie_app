import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/widgets/movie_show_info_widget.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/router/app_router.gr.dart';

class HomeMobScreen extends ConsumerStatefulWidget {
  const HomeMobScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMobScreenState();
}

class _HomeMobScreenState extends ConsumerState<HomeMobScreen> {
  final ScrollController trendingMoviesController = ScrollController();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(trendingMoviesProvider.notifier).fetchTrendingMovies();
    });

    trendingMoviesController.addListener(() {
      if (trendingMoviesController.position.pixels ==
          trendingMoviesController.position.maxScrollExtent) {
        final isLoading = ref.read(trendingMoviesProvider).isLoading;

        if (isLoading == false) {
          ref.read(trendingMoviesProvider.notifier).fetchTrendingMovies();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final trendingMovies = ref.watch(trendingMoviesProvider);
    // final isLoading = ref.watch(trendingMoviesProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: ScreenPadding.screenPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trending Movies",
              style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            trendingMovies.error != null
                ? Center(child: Text(trendingMovies.error!))
                : SizedBox(
                    height: 300,
                    child: ListView.separated(
                      controller: trendingMoviesController,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemCount: trendingMovies.movies.length,
                      itemBuilder: (context, index) {
                        final movie = trendingMovies.movies[index];

                        return GestureDetector(
                          onTap: () {
                            ref
                                .read(movieTvShowDetailsProvider.notifier)
                                .setId(movie.id);
                            context.router.push(const MovieDetailRoute());
                          },
                          child: MovieShowInfoWidget(
                            title: movie.title,
                            posterUrl: movie.posterPath,
                            rating: movie.voteAverage,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
