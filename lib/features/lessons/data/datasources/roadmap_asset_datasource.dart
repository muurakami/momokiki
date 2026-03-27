import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/learning_content.dart';
import '../../domain/services/roadmap_parser.dart';

@lazySingleton
class RoadmapAssetDataSource {
  RoadmapAssetDataSource(this._parser);

  final RoadmapParser _parser;

  RoadmapDocument parseImportedRoadmap({
    required String id,
    required String sourcePath,
    required String content,
    required SupportedLanguage language,
  }) {
    return _parser.parse(
      id: id,
      sourcePath: sourcePath,
      content: content,
      language: language,
    );
  }

  Future<List<RoadmapDocument>> loadDefaultRoadmaps() async {
    final english = await rootBundle.loadString('assets/roadmaps/English_B1_C1_Roadmap.md');
    final japanese = await rootBundle.loadString('assets/roadmaps/JAPAN_Roadmap.md');

    return [
      _parser.parse(
        id: 'roadmap_english_b1_c1',
        sourcePath: '@roadmaps/English_B1_C1_Roadmap.md',
        content: english,
        language: SupportedLanguage.english,
      ),
      _parser.parse(
        id: 'roadmap_japan',
        sourcePath: '@roadmaps/JAPAN_Roadmap.md',
        content: japanese,
        language: SupportedLanguage.japanese,
      ),
    ];
  }
}
