import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/lessons/domain/models/learning_content.dart';
import 'package:momokiki/features/lessons/domain/services/roadmap_parser.dart';

void main() {
  const parser = RoadmapParser();

  test('parses markdown roadmap into sections and items', () {
    const content = '''
    # English Roadmap
    ## Phase 1
    - Standup simulator - daily recordings
    - Bug triage - explain issues clearly
    ## Phase 2
    - Architecture walkthroughs
    ''';

    final roadmap = parser.parse(
      id: 'english',
      sourcePath: '@roadmaps/English_B1_C1_Roadmap.md',
      content: content,
      language: SupportedLanguage.english,
    );

    expect(roadmap.title, 'English Roadmap');
    expect(roadmap.sections, isNotEmpty);
    expect(roadmap.sections.first.items, isNotEmpty);
    expect(roadmap.sections.first.items.first.name, contains('Standup simulator'));
  });

  test('rejects empty roadmap content', () {
    expect(
      () => parser.parse(
        id: 'empty',
        sourcePath: 'empty.md',
        content: '   ',
        language: SupportedLanguage.japanese,
      ),
      throwsFormatException,
    );
  });
}
