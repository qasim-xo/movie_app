import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/widgets/movie_show_info_widget.dart';

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
        print('triggered');
        ref.read(trendingMoviesProvider.notifier).fetchTrendingMovies();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final trendingMovies = ref.watch(trendingMoviesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
            SizedBox(
              height: 10,
            ),
            trendingMovies.isLoading
                ? Center(child: Center(child: CircularProgressIndicator()))
                : trendingMovies.error != null
                    ? Center(child: Text(trendingMovies.error!))
                    : SizedBox(
                        height: 300,
                        child: ListView.separated(
                          controller: trendingMoviesController,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: trendingMovies.movies.length,
                          itemBuilder: (context, index) {
                            final movie = trendingMovies.movies[index];

                            return MovieShowInfoWidget(
                              title: movie.title,
                              posterUrl: movie.posterPath,
                              rating: movie.voteAverage,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 10);
                          },
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
