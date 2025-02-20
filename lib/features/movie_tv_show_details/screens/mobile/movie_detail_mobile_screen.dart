import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';
import 'package:movie_app/constants/string_constants.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/models/movie_crew/movie_crew.dart';
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

    final movieCrew = ref.watch(movieTvShowDetailsProvider).movieCrew;

    final director = movieCrew.firstWhereOrNull(
      (crewMember) => crewMember.job == "Director",
    );

    final isLoading = ref.watch(movieTvShowDetailsProvider).isLoading;

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
                              placeholder: (context, url) {
                                return const Center(
                                    child: CircularProgressIndicator());
                              },
                              errorWidget: (context, url, error) {
                                return const Icon(Icons.error);
                              },
                              imageUrl:
                                  "${TmdbApiStrings.imageBaseUrl}/${movieTvShowDetails.backdropPath}")),
                    ),
                  ];
                },
                body: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(movieTvShowDetails.title),
                            Text(director?.name ?? '')
                          ],
                        )
                      ],
                    )
                  ],
                )),
          );
  }
}
