import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/flashcard_card.dart';
import '../../domain/repositories/practice_repository.dart';

part 'card_editor_notifier.g.dart';

@riverpod
class CardEditorNotifier extends _$CardEditorNotifier {
  PracticeRepository get _repository => getIt<PracticeRepository>();

  @override
  FutureOr<void> build() {}

  Future<FlashcardCard?> loadCard(String cardId) => _repository.getCard(cardId);

  Future<FlashcardCard> saveCard({
    String? id,
    required String? deckId,
    required String front,
    required String back,
  }) async {
    final existing = id == null ? null : await _repository.getCard(id);
    final targetDeckId = deckId ?? existing?.deckId;
    if (targetDeckId == null) {
      throw StateError('deckId is required when creating a new card');
    }

    final now = DateTime.now();
    final card = (existing ??
            FlashcardCard(
              id: id ??
                  sha1
                      .convert(
                        utf8.encode('$targetDeckId$front$back${now.microsecondsSinceEpoch}'),
                      )
                      .toString(),
              deckId: targetDeckId,
              frontHtml: front,
              backHtml: back,
              frontPlain: front,
              backPlain: back,
              createdAt: now,
              updatedAt: now,
            ))
        .copyWith(
          deckId: targetDeckId,
          frontHtml: front,
          backHtml: back,
          frontPlain: front,
          backPlain: back,
          updatedAt: now,
        );
    await _repository.saveCard(card);
    return card;
  }
}
