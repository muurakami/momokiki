import 'package:injectable/injectable.dart';
import 'package:xml/xml_events.dart';

import '../../domain/models/dictionary_entry.dart';
import '../../domain/services/kana_romaji_converter.dart';

@lazySingleton
class JmdictXmlParser {
  Stream<List<DictionaryJapaneseEntry>> parseBatches(
    String rawXml, {
    int batchSize = 250,
  }) async* {
    final parser = _StreamingJmdictParser();
    final batch = <DictionaryJapaneseEntry>[];

    for (final entry in parser.parseEntries(rawXml)) {
      batch.add(entry);
      if (batch.length < batchSize) {
        continue;
      }

      yield List<DictionaryJapaneseEntry>.unmodifiable(batch);
      batch.clear();
      await Future<void>.delayed(Duration.zero);
    }

    if (batch.isNotEmpty) {
      yield List<DictionaryJapaneseEntry>.unmodifiable(batch);
    }
  }

  Future<List<DictionaryJapaneseEntry>> parse(String rawXml) async {
    final entries = <DictionaryJapaneseEntry>[];
    await for (final batch in parseBatches(rawXml, batchSize: 512)) {
      entries.addAll(batch);
    }
    return entries;
  }
}

class _StreamingJmdictParser {
  const _StreamingJmdictParser() : _romajiConverter = const KanaRomajiConverter();

  final KanaRomajiConverter _romajiConverter;

  Iterable<DictionaryJapaneseEntry> parseEntries(String rawXml) sync* {
    _MutableJmdictEntry? currentEntry;
    _MutableJmdictSense? currentSense;
    var inKanjiElement = false;
    var inReadingElement = false;
    String? currentTextTag;
    var currentGlossIsEnglish = true;
    var textBuffer = StringBuffer();

    for (final event in parseEvents(rawXml)) {
      if (event is XmlStartElementEvent) {
        final tag = event.localName;
        if (tag == 'entry') {
          currentEntry = _MutableJmdictEntry();
        } else if (tag == 'k_ele') {
          inKanjiElement = true;
        } else if (tag == 'r_ele') {
          inReadingElement = true;
        } else if (tag == 'sense') {
          currentSense = _MutableJmdictSense();
        }

        if (_textTags.contains(tag)) {
          currentTextTag = tag;
          currentGlossIsEnglish = tag == 'gloss' ? _isSupportedGloss(event) : true;
          textBuffer = StringBuffer();
        }
        continue;
      }

      if (event is XmlTextEvent) {
        if (currentTextTag != null) {
          textBuffer.write(event.value);
        }
        continue;
      }

      if (event is XmlCDATAEvent) {
        if (currentTextTag != null) {
          textBuffer.write(event.value);
        }
        continue;
      }

      if (event is! XmlEndElementEvent) {
        continue;
      }

      final tag = event.localName;
      final value = currentTextTag == tag ? _normalizeWhitespace(textBuffer.toString()) : '';

      if (tag == 'ent_seq') {
        currentEntry?.entryId = value;
      } else if (tag == 'keb') {
        if (inKanjiElement && value.isNotEmpty) {
          currentEntry?.kanjiForms.add(value);
        }
      } else if (tag == 'reb') {
        if (inReadingElement && value.isNotEmpty) {
          currentEntry?.kanaForms.add(value);
        }
      } else if (tag == 'ke_pri' || tag == 're_pri') {
        if (value.isNotEmpty) {
          currentEntry?.isCommon = true;
        }
      } else if (tag == 'pos') {
        if (value.isNotEmpty) {
          currentSense?.partsOfSpeech.add(value);
        }
      } else if (tag == 'gloss') {
        if (currentGlossIsEnglish && value.isNotEmpty) {
          currentSense?.glosses.add(value);
        }
        currentGlossIsEnglish = true;
      }

      if (tag == 'k_ele') {
        inKanjiElement = false;
      } else if (tag == 'r_ele') {
        inReadingElement = false;
      } else if (tag == 'sense') {
        if (currentSense != null && currentSense.hasContent) {
          currentEntry?.senses.add(currentSense.toModel());
        }
        currentSense = null;
      } else if (tag == 'entry') {
        final entry = currentEntry?.toModel(_romajiConverter);
        if (entry != null) {
          yield entry;
        }
        currentEntry = null;
      }

      if (currentTextTag == tag) {
        currentTextTag = null;
        textBuffer = StringBuffer();
      }
    }
  }

  bool _isSupportedGloss(XmlStartElementEvent event) {
    for (final attribute in event.attributes) {
      if (attribute.localName != 'lang') {
        continue;
      }
      final value = attribute.value.trim().toLowerCase();
      return value == 'eng' || value == 'en';
    }
    return true;
  }

  String _normalizeWhitespace(String value) {
    return value.replaceAll(RegExp(r'\s+'), ' ').trim();
  }
}

const Set<String> _textTags = <String>{
  'ent_seq',
  'keb',
  'reb',
  'ke_pri',
  're_pri',
  'pos',
  'gloss',
};

class _MutableJmdictEntry {
  String entryId = '';
  final List<String> kanjiForms = <String>[];
  final List<String> kanaForms = <String>[];
  final List<DictionaryJapaneseSense> senses = <DictionaryJapaneseSense>[];
  bool isCommon = false;

  DictionaryJapaneseEntry? toModel(KanaRomajiConverter romajiConverter) {
    if (entryId.isEmpty || (kanjiForms.isEmpty && kanaForms.isEmpty)) {
      return null;
    }

    final primaryKana = kanaForms.isNotEmpty
        ? kanaForms.first
        : romajiConverter.toHiragana(kanjiForms.first);
    final primaryRomaji = primaryKana.isEmpty ? '' : romajiConverter.toRomaji(primaryKana);
    final forms = <DictionaryJapaneseForm>[];

    for (var index = 0; index < kanjiForms.length; index += 1) {
      forms.add(
        DictionaryJapaneseForm(
          text: kanjiForms[index],
          reading: primaryKana,
          romaji: primaryRomaji,
          isPrimary: index == 0,
          isCommon: isCommon,
          isKanji: true,
        ),
      );
    }

    for (var index = 0; index < kanaForms.length; index += 1) {
      final reading = kanaForms[index];
      forms.add(
        DictionaryJapaneseForm(
          text: reading,
          reading: reading,
          romaji: romajiConverter.toRomaji(reading),
          isPrimary: forms.isEmpty && index == 0,
          isCommon: isCommon,
          isKanji: false,
        ),
      );
    }

    return DictionaryJapaneseEntry(
      entryId: entryId,
      forms: forms,
      senses: senses,
      isCommon: isCommon,
    );
  }
}

class _MutableJmdictSense {
  final List<String> partsOfSpeech = <String>[];
  final List<String> glosses = <String>[];

  bool get hasContent => glosses.isNotEmpty;

  DictionaryJapaneseSense toModel() {
    return DictionaryJapaneseSense(
      partsOfSpeech: List<String>.unmodifiable(partsOfSpeech),
      glosses: List<String>.unmodifiable(glosses),
    );
  }
}
