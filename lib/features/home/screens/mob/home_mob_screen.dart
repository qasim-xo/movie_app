import 'package:auto_route/auto_route.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/widgets/movie_list_view_widget.dart';
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
  final ScrollController topRatedMoviesController = ScrollController();
  final ScrollController upcomingMoviesController = ScrollController();
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
                "Trending Movies",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              MovieListViewWidget(
                  controller: trendingMoviesController,
                  movieList: home.trendingMovies),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Top Rated Movies",
                style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              MovieListViewWidget(
                  controller: topRatedMoviesController,
                  movieList: home.topRatedMovies),
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
