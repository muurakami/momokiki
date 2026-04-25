import 'package:injectable/injectable.dart';

import '../models/dictionary_entry.dart';
import '../models/dictionary_flashcard_draft.dart';

@lazySingleton
class DictionaryFlashcardBuilder {
  const DictionaryFlashcardBuilder();

  DictionaryFlashcardDraft build(DictionaryEntry entry) {
    return entry.map(
      japanese: _buildJapanese,
      english: _buildEnglish,
    );
  }

  DictionaryFlashcardDraft _buildJapanese(DictionaryJapaneseEntry entry) {
    final primaryForm = entry.primaryForm;
    final front = StringBuffer(primaryForm.text);
    if (primaryForm.reading.isNotEmpty && primaryForm.reading != primaryForm.text) {
      front.write('\n');
      front.write(primaryForm.reading);
    }
    if (primaryForm.romaji.isNotEmpty) {
      front.write('\n');
      front.write(primaryForm.romaji);
    }

    final backSections = <String>[];
    for (final sense in entry.senses.take(5)) {
      final glosses = sense.glosses.join(', ');
      if (glosses.isEmpty) {
        continue;
      }
      if (sense.partsOfSpeech.isEmpty) {
        backSections.add(glosses);
      } else {
        backSections.add('${sense.partsOfSpeech.join(', ')}\n$glosses');
      }
    }

    return DictionaryFlashcardDraft(
      front: front.toString().trim(),
      back: backSections.join('\n\n').trim(),
      tags: const ['dictionary', 'japanese'],
    );
  }

  DictionaryFlashcardDraft _buildEnglish(DictionaryEnglishEntry entry) {
    final front = StringBuffer(entry.word);
    if ((entry.phonetic ?? '').isNotEmpty) {
      front.write('\n');
      front.write(entry.phonetic);
    }

    final backSections = <String>[];
    for (final meaning in entry.meanings.take(5)) {
      final definitions = meaning.definitions
          .map(
            (definition) {
              final example = definition.example;
              if (example == null || example.isEmpty) {
                return definition.definition;
              }
              return '${definition.definition}\nExample: $example';
            },
          )
          .join('\n\n');
      backSections.add('${meaning.partOfSpeech}\n$definitions');
    }

    return DictionaryFlashcardDraft(
      front: front.toString().trim(),
      back: backSections.join('\n\n').trim(),
      tags: const ['dictionary', 'english'],
    );
  }
}
