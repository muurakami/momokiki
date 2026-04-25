import 'package:injectable/injectable.dart';

import '../models/dictionary_language.dart';

@lazySingleton
class QueryLanguageDetector {
  const QueryLanguageDetector();

  static final RegExp _japaneseScriptPattern = RegExp(
    r'[\u3040-\u30ff\u3400-\u4dbf\u4e00-\u9fff々〆ヵヶ]',
  );
  static final RegExp _latinPattern = RegExp(r"^[A-Za-z\s'\-]+$");

  DictionaryQueryLanguageMode detect(String query) {
    final normalized = query.trim();
    if (normalized.isEmpty) {
      return DictionaryQueryLanguageMode.empty;
    }
    if (_japaneseScriptPattern.hasMatch(normalized)) {
      return DictionaryQueryLanguageMode.japanese;
    }
    if (_latinPattern.hasMatch(normalized)) {
      return DictionaryQueryLanguageMode.latinAmbiguous;
    }
    return DictionaryQueryLanguageMode.japanese;
  }
}
