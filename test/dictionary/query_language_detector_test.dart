import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/domain/models/dictionary_language.dart';
import 'package:momokiki/features/dictionary/domain/services/query_language_detector.dart';

void main() {
  const detector = QueryLanguageDetector();

  test('detects japanese script queries', () {
    expect(detector.detect('走る'), DictionaryQueryLanguageMode.japanese);
    expect(detector.detect('はしる'), DictionaryQueryLanguageMode.japanese);
    expect(detector.detect('カタカナ'), DictionaryQueryLanguageMode.japanese);
  });

  test('detects latin ambiguous queries', () {
    expect(detector.detect('hashiru'), DictionaryQueryLanguageMode.latinAmbiguous);
    expect(detector.detect('run fast'), DictionaryQueryLanguageMode.latinAmbiguous);
  });

  test('treats empty query as empty mode', () {
    expect(detector.detect('   '), DictionaryQueryLanguageMode.empty);
  });
}
