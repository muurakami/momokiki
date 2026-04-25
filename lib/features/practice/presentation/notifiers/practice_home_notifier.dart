import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/flashcard_deck.dart';
import '../../domain/repositories/practice_repository.dart';

part 'practice_home_notifier.g.dart';

@riverpod
class PracticeHomeNotifier extends _$PracticeHomeNotifier {
  PracticeRepository get _repository => getIt<PracticeRepository>();

  @override
  Future<List<FlashcardDeck>> build() => _repository.getDecks();

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_repository.getDecks);
  }

  Future<bool> importDeckJson() async {
    state = const AsyncLoading();
    var imported = false;
    state = await AsyncValue.guard(() async {
      imported = await _repository.importDeckFromFile() != null;
      return _repository.getDecks();
    });
    return imported;
  }
}
