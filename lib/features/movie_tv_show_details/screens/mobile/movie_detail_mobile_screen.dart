import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(movieTvShowDetails.title),
      ),
      body: Column(
        children: [
          Text('Title'),
          Text("Romance, Comedy, Sci-fi"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [Text('Release Date'), Text('June 27, 2023')],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [Text('Length'), Text('124 minutes')],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [Text('Rating'), Text('PG-14')],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
