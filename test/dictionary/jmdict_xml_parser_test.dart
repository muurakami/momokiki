import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/dictionary/data/datasources/jmdict_xml_parser.dart';

void main() {
  final parser = JmdictXmlParser();

  test('parses compact JMdict XML into japanese entries', () async {
    const xml = '''
    <?xml version="1.0" encoding="UTF-8"?>
    <JMdict>
      <entry>
        <ent_seq>1000000</ent_seq>
        <k_ele>
          <keb>走る</keb>
          <ke_pri>news1</ke_pri>
        </k_ele>
        <r_ele>
          <reb>はしる</reb>
          <re_pri>ichi1</re_pri>
        </r_ele>
        <sense>
          <pos>verb</pos>
          <gloss>to run</gloss>
          <gloss>to travel quickly</gloss>
        </sense>
      </entry>
    </JMdict>
    ''';

    final entries = await parser.parse(xml);
    expect(entries, hasLength(1));

    final entry = entries.first;
    expect(entry.entryId, '1000000');
    expect(entry.forms.first.text, '走る');
    expect(entry.forms.first.reading, 'はしる');
    expect(entry.forms.first.romaji, 'hashiru');
    expect(entry.senses.first.glosses, contains('to run'));
    expect(entry.isCommon, isTrue);
  });
}
