import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/movies/providers/movie_provider.dart';
import 'package:movie_app/features/movies/widgets/movie_grid_widget.dart';

class MovieMobileScreen extends ConsumerStatefulWidget {
  const MovieMobileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieMobileScreenState();
}

class _MovieMobileScreenState extends ConsumerState<MovieMobileScreen> {
  final ScrollController movieController = ScrollController();
  final ScrollController searchedMoviesController = ScrollController();
  Timer? debouncer;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeProvider.notifier).fetchTrendingMovies();
    });

    movieController.addListener(() {
      if (movieController.position.pixels ==
          movieController.position.maxScrollExtent) {
        final isLoading = ref.read(homeProvider).isLoading;

        if (isLoading == false) {
          ref.read(homeProvider.notifier).fetchTrendingMovies();
        }
      }
    });

    searchedMoviesController.addListener(() {
      if (searchedMoviesController.position.pixels ==
          searchedMoviesController.position.maxScrollExtent) {
        final isLoading = ref.read(moviesProvider).isLoading;

        if (isLoading == false) {
          ref.read(moviesProvider.notifier).setIsFetchFromNextPage(true);
          ref.read(moviesProvider.notifier).fetchOnSearch();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final trendingMovies = ref.watch(homeProvider);
    final searchMovieQuery = ref.watch(searchMovieProvider);
    final searchMovies = ref.watch(moviesProvider);
    final isLoading = ref.watch(moviesProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(
              onChanged: (value) {
                ref.read(searchMovieProvider.notifier).state = value;
                ref.read(moviesProvider.notifier).setIsFetchFromNextPage(false);

                ref.read(moviesProvider.notifier).fetchOnSearch();

                // if (debouncer?.isActive ?? false) debouncer?.cancel();
                // debouncer = Timer(const Duration(milliseconds: 500), () {

                // });
              },
              leading: const Icon(Icons.search),
            ),
            const SizedBox(
              height: 15,
            ),
            searchMovieQuery.isEmpty
                ? Expanded(
                    child: MovieGridWidget(
                    movies: trendingMovies.trendingMovies,
                    scrollController: movieController,
                    isLoading: isLoading,
                  ))
                : Expanded(
                    child: MovieGridWidget(
                    movies: searchMovies.movies,
                    scrollController: searchedMoviesController,
                    isLoading: isLoading,
                  ))
          ],
        ),
      ),
    );
  }
}
