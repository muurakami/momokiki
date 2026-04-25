import 'package:injectable/injectable.dart';

@lazySingleton
class KanaRomajiConverter {
  const KanaRomajiConverter();

  static const Map<String, String> _digraphMap = {
    'きゃ': 'kya',
    'きゅ': 'kyu',
    'きょ': 'kyo',
    'ぎゃ': 'gya',
    'ぎゅ': 'gyu',
    'ぎょ': 'gyo',
    'しゃ': 'sha',
    'しゅ': 'shu',
    'しょ': 'sho',
    'じゃ': 'ja',
    'じゅ': 'ju',
    'じょ': 'jo',
    'ちゃ': 'cha',
    'ちゅ': 'chu',
    'ちょ': 'cho',
    'にゃ': 'nya',
    'にゅ': 'nyu',
    'にょ': 'nyo',
    'ひゃ': 'hya',
    'ひゅ': 'hyu',
    'ひょ': 'hyo',
    'びゃ': 'bya',
    'びゅ': 'byu',
    'びょ': 'byo',
    'ぴゃ': 'pya',
    'ぴゅ': 'pyu',
    'ぴょ': 'pyo',
    'みゃ': 'mya',
    'みゅ': 'myu',
    'みょ': 'myo',
    'りゃ': 'rya',
    'りゅ': 'ryu',
    'りょ': 'ryo',
    'ゔぁ': 'va',
    'ゔぃ': 'vi',
    'ゔぇ': 've',
    'ゔぉ': 'vo',
    'ゔゅ': 'vyu',
    'てぃ': 'ti',
    'でぃ': 'di',
    'とぅ': 'tu',
    'どぅ': 'du',
    'ふぁ': 'fa',
    'ふぃ': 'fi',
    'ふぇ': 'fe',
    'ふぉ': 'fo',
    'つぁ': 'tsa',
    'つぃ': 'tsi',
    'つぇ': 'tse',
    'つぉ': 'tso',
    'うぃ': 'wi',
    'うぇ': 'we',
    'うぉ': 'wo',
    'しぇ': 'she',
    'じぇ': 'je',
    'ちぇ': 'che',
  };

  static const Map<String, String> _singleMap = {
    'あ': 'a',
    'い': 'i',
    'う': 'u',
    'え': 'e',
    'お': 'o',
    'か': 'ka',
    'き': 'ki',
    'く': 'ku',
    'け': 'ke',
    'こ': 'ko',
    'さ': 'sa',
    'し': 'shi',
    'す': 'su',
    'せ': 'se',
    'そ': 'so',
    'た': 'ta',
    'ち': 'chi',
    'つ': 'tsu',
    'て': 'te',
    'と': 'to',
    'な': 'na',
    'に': 'ni',
    'ぬ': 'nu',
    'ね': 'ne',
    'の': 'no',
    'は': 'ha',
    'ひ': 'hi',
    'ふ': 'fu',
    'へ': 'he',
    'ほ': 'ho',
    'ま': 'ma',
    'み': 'mi',
    'む': 'mu',
    'め': 'me',
    'も': 'mo',
    'や': 'ya',
    'ゆ': 'yu',
    'よ': 'yo',
    'ら': 'ra',
    'り': 'ri',
    'る': 'ru',
    'れ': 're',
    'ろ': 'ro',
    'わ': 'wa',
    'を': 'wo',
    'ん': 'n',
    'が': 'ga',
    'ぎ': 'gi',
    'ぐ': 'gu',
    'げ': 'ge',
    'ご': 'go',
    'ざ': 'za',
    'じ': 'ji',
    'ず': 'zu',
    'ぜ': 'ze',
    'ぞ': 'zo',
    'だ': 'da',
    'ぢ': 'ji',
    'づ': 'zu',
    'で': 'de',
    'ど': 'do',
    'ば': 'ba',
    'び': 'bi',
    'ぶ': 'bu',
    'べ': 'be',
    'ぼ': 'bo',
    'ぱ': 'pa',
    'ぴ': 'pi',
    'ぷ': 'pu',
    'ぺ': 'pe',
    'ぽ': 'po',
    'ぁ': 'a',
    'ぃ': 'i',
    'ぅ': 'u',
    'ぇ': 'e',
    'ぉ': 'o',
    'ゃ': 'ya',
    'ゅ': 'yu',
    'ょ': 'yo',
    'ゎ': 'wa',
    'ゔ': 'vu',
  };

  static const Map<String, String> _diacriticMap = {
    'ā': 'a',
    'á': 'a',
    'à': 'a',
    'â': 'a',
    'ä': 'a',
    'ã': 'a',
    'ī': 'i',
    'í': 'i',
    'ì': 'i',
    'î': 'i',
    'ï': 'i',
    'ū': 'u',
    'ú': 'u',
    'ù': 'u',
    'û': 'u',
    'ü': 'u',
    'ē': 'e',
    'é': 'e',
    'è': 'e',
    'ê': 'e',
    'ë': 'e',
    'ō': 'o',
    'ó': 'o',
    'ò': 'o',
    'ô': 'o',
    'ö': 'o',
    'õ': 'o',
  };

  String normalizeLatin(String text) {
    final lowered = text.toLowerCase().trim();
    final buffer = StringBuffer();
    for (final rune in lowered.runes) {
      final character = String.fromCharCode(rune);
      buffer.write(_diacriticMap[character] ?? character);
    }

    return buffer
        .toString()
        .replaceAll(RegExp(r"[^a-z0-9\s'\-]"), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  String toHiragana(String text) {
    final buffer = StringBuffer();
    for (final rune in text.runes) {
      if (rune >= 0x30A1 && rune <= 0x30F6) {
        buffer.writeCharCode(rune - 0x60);
      } else {
        buffer.writeCharCode(rune);
      }
    }
    return buffer.toString();
  }

  String toRomaji(String text) {
    final hiragana = toHiragana(text);
    final buffer = StringBuffer();
    var index = 0;
    var geminate = false;

    while (index < hiragana.length) {
      final current = hiragana[index];

      if (current == 'っ') {
        geminate = true;
        index += 1;
        continue;
      }

      if (current == 'ー') {
        _appendLongVowel(buffer);
        index += 1;
        continue;
      }

      if (index + 1 < hiragana.length) {
        final digraph = hiragana.substring(index, index + 2);
        final digraphRomaji = _digraphMap[digraph];
        if (digraphRomaji != null) {
          if (geminate && digraphRomaji.isNotEmpty) {
            buffer.write(digraphRomaji[0]);
            geminate = false;
          }
          buffer.write(digraphRomaji);
          index += 2;
          continue;
        }
      }

      final romaji = _singleMap[current] ?? current;
      if (geminate && romaji.isNotEmpty) {
        buffer.write(romaji[0]);
        geminate = false;
      }
      buffer.write(romaji);
      index += 1;
    }

    return normalizeLatin(buffer.toString());
  }

  void _appendLongVowel(StringBuffer buffer) {
    final current = buffer.toString();
    if (current.isEmpty) {
      return;
    }

    final lastCharacter = current[current.length - 1];
    if (RegExp(r'[aeiou]').hasMatch(lastCharacter)) {
      buffer.write(lastCharacter);
    }
  }
}
