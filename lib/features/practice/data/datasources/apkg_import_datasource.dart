import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';

import '../../domain/models/apkg_import_preview.dart';
import '../../domain/models/flashcard_card.dart';
import '../../domain/models/flashcard_deck.dart';

@lazySingleton
class ApkgImportDataSource {
  Future<(ApkgImportPreview, List<FlashcardDeck>, List<FlashcardCard>)> importApkg(
    String filePath,
  ) async {
    final sourceFile = File(filePath);
    final tempDir = await getTemporaryDirectory();
    final extractionDir = Directory(path.join(tempDir.path, 'apkg_import_${DateTime.now().millisecondsSinceEpoch}'));
    await extractionDir.create(recursive: true);

    ZipDecoder().decodeBuffer(InputFileStream(sourceFile.path), verify: true).files
      ..forEach((file) {
        final outputPath = path.join(extractionDir.path, file.name);
        if (file.isFile) {
          final outFile = File(outputPath)..createSync(recursive: true);
          outFile.writeAsBytesSync(file.content as List<int>);
        }
      });

    final collectionFile = File(path.join(extractionDir.path, 'collection.anki2'));
    if (!collectionFile.existsSync()) {
      throw const FormatException('Invalid .apkg: collection.anki2 not found');
    }

    final database = sqlite3.open(collectionFile.path);
    final decks = <FlashcardDeck>[];
    final cards = <FlashcardCard>[];

    final deckRows = database.select('SELECT decks FROM col LIMIT 1');
    if (deckRows.isNotEmpty) {
      final rawDecks = deckRows.first['decks'] as String?;
      if (rawDecks != null && rawDecks.isNotEmpty) {
        decks.add(
          FlashcardDeck(
            id: sha1.convert(utf8.encode(rawDecks)).toString(),
            name: 'Imported Anki Deck',
            sourceType: 'apkg',
            createdAt: DateTime.now(),
          ),
        );
      }
    }

    final noteRows = database.select('SELECT guid, flds FROM notes LIMIT 200');
    for (final row in noteRows) {
      final fields = (row['flds'] as String? ?? '').split('');
      final front = fields.isNotEmpty ? fields.first : 'Front';
      final back = fields.length > 1 ? fields[1] : '';
      cards.add(
        FlashcardCard(
          id: row['guid'] as String? ?? sha1.convert(utf8.encode(front)).toString(),
          deckId: decks.isEmpty ? 'imported-deck' : decks.first.id,
          frontHtml: front,
          backHtml: back,
          frontPlain: front,
          backPlain: back,
          createdAt: DateTime.now(),
        ),
      );
    }

    database.dispose();

    return (
      ApkgImportPreview(
        deckNames: decks.map((deck) => deck.name).toList(),
        cardCount: cards.length,
        mediaCount: Directory(extractionDir.path)
            .listSync()
            .whereType<File>()
            .where((file) => path.basename(file.path) != 'collection.anki2')
            .length,
      ),
      decks,
      cards,
    );
  }
}
