import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';

class HomeMobScreen extends ConsumerStatefulWidget {
  const HomeMobScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMobScreenState();
}

class _HomeMobScreenState extends ConsumerState<HomeMobScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(trendingMoviesProvider.notifier).fetchTrendingMovies();
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
          children: [
            Text(
              "Trending Movies",
              style: context.textTheme.bodyMedium?.copyWith(fontSize: 20),
            ),
            trendingMovies.isLoading
                ? Center(child: CircularProgressIndicator())
                : trendingMovies.error != null
                    ? Center(child: Text(trendingMovies.error!))
                    : Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: trendingMovies.movies.length,
                          itemBuilder: (context, index) {
                            final movie = trendingMovies.movies[index];
                            return ListTile(
                              title: Text(movie.title),
                              subtitle: Text(movie.overview),
                              leading: movie.posterPath != null
                                  ? Image.network(
                                      'https://image.tmdb.org/t/p/original/${movie.posterPath}')
                                  : Text("Not available"),
                            );
                          },
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
