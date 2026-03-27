import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../data/datasources/roadmap_asset_datasource.dart';
import '../../domain/models/learning_content.dart';
import 'learning_catalog_state.dart';

part 'learning_catalog_notifier.g.dart';

@Riverpod(keepAlive: true)
class LearningCatalogNotifier extends _$LearningCatalogNotifier {
  RoadmapAssetDataSource get _roadmapSource => getIt<RoadmapAssetDataSource>();

  @override
  LearningCatalogState build() {
    Future.microtask(load);
    return const LearningCatalogState(isLoading: true);
  }

  Future<void> load() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final lessons = _defaultLessonIslands();
      final roadmaps = await _roadmapSource.loadDefaultRoadmaps();

      state = state.copyWith(
        isLoading: false,
        lessons: lessons,
        roadmaps: roadmaps,
      );
    } catch (error) {
      state = state.copyWith(isLoading: false, errorMessage: error.toString());
    }
  }

  void selectLanguage(SupportedLanguage language) {
    state = state.copyWith(selectedLanguage: language);
  }

  void importRoadmap({
    required String fileName,
    required String content,
  }) {
    final language = _inferLanguage(fileName);
    final roadmap = _roadmapSource.parseImportedRoadmap(
      id: fileName.replaceAll(RegExp(r'[^a-zA-Z0-9]+'), '_').toLowerCase(),
      sourcePath: fileName,
      content: content,
      language: language,
    );

    state = state.copyWith(roadmaps: [...state.roadmaps, roadmap]);
  }

  SupportedLanguage _inferLanguage(String fileName) {
    final normalized = fileName.toLowerCase();
    if (normalized.contains('japan') || normalized.contains('japanese')) {
      return SupportedLanguage.japanese;
    }
    return SupportedLanguage.english;
  }

  List<LessonIsland> _defaultLessonIslands() {
    return const [
      LessonIsland(
        lessonId: 'ja_hiragana_1',
        title: 'Hiragana Harbor',
        subtitle: 'Start with the first kana sounds',
        language: SupportedLanguage.japanese,
        order: 1,
        progress: 0.3,
        isStarter: true,
        emoji: '🍑',
      ),
      LessonIsland(
        lessonId: 'ja_katakana_1',
        title: 'Katakana Cliffs',
        subtitle: 'Master foreign sounds and names',
        language: SupportedLanguage.japanese,
        order: 2,
        isStarter: true,
        emoji: '🌊',
      ),
      LessonIsland(
        lessonId: 'ja_intro_3',
        title: 'Morning Grove',
        subtitle: 'Warm up daily phrases',
        language: SupportedLanguage.japanese,
        order: 3,
        emoji: '🌤️',
      ),
      LessonIsland(
        lessonId: 'ja_intro_4',
        title: 'Thanks Trail',
        subtitle: 'Polite gratitude practice',
        language: SupportedLanguage.japanese,
        order: 4,
        emoji: '🎁',
      ),
      LessonIsland(
        lessonId: 'ja_intro_5',
        title: 'Review Summit',
        subtitle: 'Climb the recap challenge',
        language: SupportedLanguage.japanese,
        order: 5,
        emoji: '⛰️',
      ),
      LessonIsland(
        lessonId: 'en_present_simple_1',
        title: 'Present Simple Pier',
        subtitle: 'Talk about habits and facts',
        language: SupportedLanguage.english,
        order: 1,
        progress: 0.55,
        emoji: '🗣️',
      ),
      LessonIsland(
        lessonId: 'en_present_simple_2',
        title: 'Daily Routines Dock',
        subtitle: 'Practice real daily actions',
        language: SupportedLanguage.english,
        order: 2,
        emoji: '🧠',
      ),
      LessonIsland(
        lessonId: 'en_present_simple_3',
        title: 'Question Quay',
        subtitle: 'Ask and answer in present simple',
        language: SupportedLanguage.english,
        order: 3,
        emoji: '🚀',
      ),
    ];
  }
}
