import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/director_info/providers/director_provider.dart';

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
          body: TabBar(
            tabs: [
              for (var job in jobList)
                Tab(
                  text: job,
                )
            ],
          )),
    );
  }
}
