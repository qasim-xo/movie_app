import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/extension_constants.dart';

class MovieTvSettingsSheet extends ConsumerWidget {
  const MovieTvSettingsSheet({
    super.key,
    required this.movieTvShowTitle,
    required this.id
  });

  final String movieTvShowTitle;
  final int id; 

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              movieTvShowTitle,
              style: context.textTheme.bodyMedium
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  
                });
              },
              child: const Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(
                    width: 10,
                  ),
                  Text('All Ratings')
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Icon(Icons.list),
                SizedBox(
                  width: 10,
                ),
                Text('Add to watchlist')
              ],
            )
          ],
        ),
      ),
    );
  }
}
