import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/data_constants.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/widgets/movie_list_view_widget.dart';
import 'package:movie_app/features/home/widgets/movie_show_info_widget.dart';
import 'package:movie_app/features/home/widgets/tv_shows_list_view_widget.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/router/app_router.gr.dart';

class HomeMobScreen extends ConsumerStatefulWidget {
  const HomeMobScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMobScreenState();
}

class _HomeMobScreenState extends ConsumerState<HomeMobScreen> {
  final ScrollController trendingMoviesController = ScrollController();
  final ScrollController topRatedMoviesController = ScrollController();
  final ScrollController upcomingMoviesController = ScrollController();
  final ScrollController trendingTvshowsController = ScrollController();
  final ScrollController topRatedTvshowsController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeProvider.notifier).fetchAllMovies();
    });

    _setupScrollController(
      trendingMoviesController,
      () => ref.read(homeProvider.notifier).fetchTrendingMovies(),
    );
    _setupScrollController(
      topRatedMoviesController,
      () => ref.read(homeProvider.notifier).fetchTopRatedMovies(),
    );
    _setupScrollController(
      upcomingMoviesController,
      () => ref.read(homeProvider.notifier).fetchUpcomingMovies(),
    );
  }

  void _setupScrollController(
    ScrollController controller,
    Future<void> Function() fetchMore,
  ) {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        final isLoading = ref.read(homeProvider).isLoading;
        if (!isLoading) {
          fetchMore();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final home = ref.watch(homeProvider);
    final selectedChip = ref.watch(homeProvider).selectedTrendingChip;
    final selectedTopRatedChip = ref.watch(homeProvider).selectedTopRatedChip;

    // final isLoading = ref.watch(trendingMoviesProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.router.push(const SearchRoute());
              },
              icon: const Icon(Icons.search))
        ],
        title: const Text('Home'),
      ),
      body: Padding(
        padding: ScreenPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              Wrap(
                children: [
                  ChoiceChip(
                    label: const Text('Movies'),
                    selected: selectedChip == 0,
                    onSelected: (bool selected) {
                      if (selected) {
                        ref
                            .read(homeProvider.notifier)
                            .setTrendingSelectedChip(0);
                      }
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: const Text('TV Shows'),
                    selected: selectedChip == 1,
                    onSelected: (bool selected) {
                      if (selected) {
                        ref
                            .read(homeProvider.notifier)
                            .setTrendingSelectedChip(1);

                        if (home.trendingTvshows.isEmpty) {
                          ref
                              .read(homeProvider.notifier)
                              .fetchTrendingTvshows();
                        }
                      }
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              selectedChip == 0
                  ? MovieListViewWidget(
                      controller: trendingMoviesController,
                      movieList: home.trendingMovies,
                    )
                  : selectedChip == 1
                      ? TvShowsListViewWidget(
                          controller: trendingTvshowsController,
                          movieList: home.trendingTvshows,
                        )
                      : const SizedBox.shrink(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Top Rated",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              Wrap(
                children: [
                  ChoiceChip(
                    label: const Text('Movies'),
                    selected: selectedTopRatedChip == 0,
                    onSelected: (bool selected) {
                      if (selected) {
                        ref
                            .read(homeProvider.notifier)
                            .setTopRatedSelectedChip(0);
                      }
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    label: const Text('TV Shows'),
                    selected: selectedTopRatedChip == 1,
                    onSelected: (bool selected) {
                      if (selected) {
                        ref
                            .read(homeProvider.notifier)
                            .setTopRatedSelectedChip(1);

                        if (home.topRatedTvshows.isEmpty) {
                          ref
                              .read(homeProvider.notifier)
                              .fetchTopRatedTvshows();
                        }
                      }
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              selectedTopRatedChip == 0
                  ? MovieListViewWidget(
                      controller: topRatedMoviesController,
                      movieList: home.topRatedMovies,
                    )
                  : selectedTopRatedChip == 1
                      ? TvShowsListViewWidget(
                          controller: topRatedTvshowsController,
                          movieList: home.topRatedTvshows,
                        )
                      : const SizedBox.shrink(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Upcoming Movies",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              MovieListViewWidget(
                  controller: upcomingMoviesController,
                  movieList: home.upcomingMovies),
            ],
          ),
        ),
      ),
    );
  }
}
