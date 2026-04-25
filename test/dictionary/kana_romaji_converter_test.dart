import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/domain/services/kana_romaji_converter.dart';

void main() {
  const converter = KanaRomajiConverter();

  test('converts katakana to hiragana', () {
    expect(converter.toHiragana('カタカナ'), 'かたかな');
  });

  test('converts kana to normalized romaji', () {
    expect(converter.toRomaji('はしる'), 'hashiru');
    expect(converter.toRomaji('がっこう'), 'gakkou');
    expect(converter.toRomaji('スーパー'), 'suupaa');
  });

  test('normalizes latin diacritics and spacing', () {
    expect(converter.normalizeLatin('  Tōkyō  '), 'tokyo');
    expect(converter.normalizeLatin('Shin-juku'), 'shin-juku');
  });
}
