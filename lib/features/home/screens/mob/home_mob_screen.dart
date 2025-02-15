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
      ref.read(homeProvider.notifier).fetchTrendingMovies();
      ref.read(homeProvider.notifier).fetchTopRatedMovies();
      ref.read(homeProvider.notifier).fetchUpcomingMovies();
    });

    trendingMoviesController.addListener(() {
      if (trendingMoviesController.position.pixels ==
          trendingMoviesController.position.maxScrollExtent) {
        final isLoading = ref.read(homeProvider).isLoading;

        if (isLoading == false) {
          ref.read(homeProvider.notifier).fetchTrendingMovies();
        }
      }
    });

    topRatedMoviesController.addListener(() {
      if (topRatedMoviesController.position.pixels ==
          topRatedMoviesController.position.maxScrollExtent) {
        final isLoading = ref.read(homeProvider).isLoading;

        if (isLoading == false) {
          ref.read(homeProvider.notifier).fetchTopRatedMovies();
        }
      }
    });

    upcomingMoviesController.addListener(() {
      if (upcomingMoviesController.position.pixels ==
          upcomingMoviesController.position.maxScrollExtent) {
        final isLoading = ref.read(homeProvider).isLoading;

        if (isLoading == false) {
          ref.read(homeProvider.notifier).fetchUpcomingMovies();
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
              home.error != null
                  ? Center(child: Text(home.error!))
                  : MovieListViewWidget(
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
              home.error != null
                  ? Center(child: Text(home.error!))
                  : MovieListViewWidget(
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
              home.error != null
                  ? Center(child: Text(home.error!))
                  : MovieListViewWidget(
                      controller: upcomingMoviesController,
                      movieList: home.upcomingMovies),
            ],
          ),
        ),
      ),
    );
  }
}
