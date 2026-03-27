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
        lessonId: 'lesson_intro_1',
        title: 'Greeting Garden',
        subtitle: 'Say hello and start strong',
        language: SupportedLanguage.japanese,
        order: 1,
        progress: 0.3,
        emoji: '🍑',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_2',
        title: 'Farewell Falls',
        subtitle: 'Goodbye with confidence',
        language: SupportedLanguage.japanese,
        order: 2,
        emoji: '🌊',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_3',
        title: 'Morning Grove',
        subtitle: 'Warm up daily phrases',
        language: SupportedLanguage.japanese,
        order: 3,
        emoji: '🌤️',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_4',
        title: 'Thanks Trail',
        subtitle: 'Polite gratitude practice',
        language: SupportedLanguage.japanese,
        order: 4,
        emoji: '🎁',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_5',
        title: 'Review Summit',
        subtitle: 'Climb the recap challenge',
        language: SupportedLanguage.japanese,
        order: 5,
        emoji: '⛰️',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_1',
        title: 'Standup Bay',
        subtitle: 'Speak clearly in English',
        language: SupportedLanguage.english,
        order: 1,
        progress: 0.55,
        emoji: '🗣️',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_2',
        title: 'Review Ridge',
        subtitle: 'Push back with nuance',
        language: SupportedLanguage.english,
        order: 2,
        emoji: '🧠',
      ),
      LessonIsland(
        lessonId: 'lesson_intro_3',
        title: 'Interview Island',
        subtitle: 'Train for high-stakes calls',
        language: SupportedLanguage.english,
        order: 3,
        emoji: '🚀',
      ),
    ];
  }
}
