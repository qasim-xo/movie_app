import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/director_info/repository/director_repository.dart';
import 'package:movie_app/models/combined_credits_crew/combined_credits_crew.dart';
import 'package:movie_app/utils/dependency_injection.dart';

class DirectorState {
  final List<CombinedCreditsCrew> combinedCreditsCrew;

  DirectorState({required this.combinedCreditsCrew});

  DirectorState copyWith({
    List<CombinedCreditsCrew>? combinedCreditsCrew,
  }) {
    return DirectorState(
        combinedCreditsCrew: combinedCreditsCrew ?? this.combinedCreditsCrew);
  }

  factory DirectorState.initial() {
    return DirectorState(combinedCreditsCrew: []);
  }
}

class DirectorNotifier extends Notifier<DirectorState> {
  @override
  DirectorState build() {
    return DirectorState.initial();
  }

  void fetchCombinedCrewCredits(String personId) async {
    try {
      final combinedCreditsCrew = await getIt<DirectorRepository>()
          .getMovieCrewCombinedCredits(personId);
      state = state.copyWith(combinedCreditsCrew: combinedCreditsCrew);
    } catch (e) {
      print(e.toString());
    }
  }
}

final directorProvider = NotifierProvider<DirectorNotifier, DirectorState>(
  () => DirectorNotifier(),
);
