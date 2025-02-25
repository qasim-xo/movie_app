import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/director_info/providers/director_provider.dart';
import 'package:movie_app/models/combined_credits_crew/combined_credits_crew.dart';

class DirectorInfoMobileScreen extends ConsumerWidget {
  const DirectorInfoMobileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final combinedCreditsCrew = ref.watch(directorProvider).combinedCreditsCrew;
    final jobList = combinedCreditsCrew.map((e) => e.job).toSet().toList();

    return DefaultTabController(
      length: jobList.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Person'),
        ),
        body: Column(
          children: [
            TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: [
                for (var job in jobList)
                  Tab(
                    text: job,
                  )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: jobList.map((job) {
                  List filteredList =
                      combinedCreditsCrew.where((e) => e.job == job).toList();

                  return ListView.builder(
                    shrinkWrap: true,
                    physics:
                        const NeverScrollableScrollPhysics(), // Prevents nested scroll issues
                    itemCount: filteredList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(filteredList[index].title);
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
