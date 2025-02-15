import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/ui_constants.dart';
import 'package:movie_app/features/movies/providers/movie_provider.dart';
import 'package:movie_app/features/search/providers/search_provider.dart';
import 'package:movie_app/features/search/widgets/movie_list_view_item.dart';

class SearchMobileScreen extends ConsumerStatefulWidget {
  const SearchMobileScreen({super.key});

  @override
  ConsumerState<SearchMobileScreen> createState() => _SearchMobileScreenState();
}

class _SearchMobileScreenState extends ConsumerState<SearchMobileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final activeTab = ref.watch(searchProvider).activeTab;
    final searchMovies = ref.watch(searchProvider).movies;
    final searchTvshows = ref.watch(searchProvider).tvShows;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          leading: IconButton(
              onPressed: () {
                context.router.maybePop();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: ScreenPadding.screenPadding,
          child: Column(
            children: [
              SearchBar(
                onChanged: (value) {
                  ref.read(searchMovieProvider.notifier).state = value;

                  if (activeTab == 0) {
                    ref
                        .read(searchProvider.notifier)
                        .setIsFetchFromNextPage(false);

                    ref.read(searchProvider.notifier).fetchOnSearch();
                  } else if (activeTab == 1) {
                    ref.read(searchProvider.notifier).fetchTvShowsOnSearch();
                  }

                  // if (debouncer?.isActive ?? false) debouncer?.cancel();
                  // debouncer = Timer(const Duration(milliseconds: 500), () {

                  // });
                },
                leading: const Icon(Icons.search),
              ),
              const SizedBox(
                height: 8,
              ),
              TabBar(
                onTap: (index) {
                  ref.read(searchProvider.notifier).setActiveTab(index);
                },
                tabs: [
                  const Tab(icon: Icon(Icons.movie), text: 'Movies'),
                  const Tab(icon: Icon(Icons.tv), text: 'TV Shows'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      itemCount: searchMovies.length,
                      itemBuilder: (BuildContext context, int index) {
                        final movie = searchMovies[index];
                        return MovieListViewItem(movie: movie);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                    ),
                    ListView.separated(
                      itemCount: searchTvshows.length,
                      itemBuilder: (BuildContext context, int index) {
                        final movie = searchTvshows[index];
                        return MovieListViewItem(tvshow: movie);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
