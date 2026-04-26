import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../../auth/presentation/notifiers/auth_notifier.dart';
import '../../data/datasources/roadmap_asset_datasource.dart';
import '../../domain/models/lesson_progress.dart';
import '../../domain/models/learning_content.dart';
import '../../domain/repositories/lesson_repository.dart';
import '../../domain/services/xp_calculator.dart';
import 'learning_catalog_state.dart';

part 'learning_catalog_notifier.g.dart';

@Riverpod(keepAlive: true)
class LearningCatalogNotifier extends _$LearningCatalogNotifier {
  RoadmapAssetDataSource get _roadmapSource => getIt<RoadmapAssetDataSource>();
  XpCalculator get _xpCalculator => const XpCalculator();

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
      final profile = await ref.read(authNotifierProvider.future);
      final userId = profile?.id ?? 'guest-user';
      final repository = getIt<LessonRepository>();
      final stats = await repository.getUserStats(userId);
      final enrichedLessons = <LessonIsland>[];

      for (final lesson in lessons) {
        final progress = await repository.getProgress(
            userId: userId, lessonId: lesson.lessonId);
        final status = switch (progress) {
          LessonProgress(isCompleted: true) => LessonStatus.completed,
          LessonProgress(answeredBlocks: > 0) => LessonStatus.inProgress,
          _ => LessonStatus.notStarted,
        };

        enrichedLessons.add(
          lesson.copyWith(
            progress: progress == null
                ? 0
                : (progress.answeredBlocks == 0)
                    ? 0
                    : (progress.answeredBlocks /
                            (progress.currentBlockIndex == 0
                                ? progress.answeredBlocks
                                : progress.currentBlockIndex))
                        .clamp(0, 1),
            earnedXp: progress?.earnedXp ?? 0,
            status: status,
            ctaLabel: switch (status) {
              LessonStatus.completed => 'Review',
              LessonStatus.inProgress => 'Continue',
              LessonStatus.notStarted => 'Start',
            },
          ),
        );
      }

      state = state.copyWith(
        isLoading: false,
        lessons: enrichedLessons,
        roadmaps: roadmaps,
        totalXp: stats.totalXp,
        level: stats.level,
        levelProgress: _xpCalculator.getLevelProgress(stats),
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
        description:
            'Read the first hiragana symbols and match them to sounds.',
        language: SupportedLanguage.japanese,
        order: 1,
        progress: 0.3,
        isStarter: true,
        xpReward: 40,
        emoji: '🍑',
      ),
      LessonIsland(
        lessonId: 'ja_katakana_1',
        title: 'Katakana Cliffs',
        subtitle: 'Master foreign sounds and names',
        description:
            'Learn the first katakana symbols used in names and loanwords.',
        language: SupportedLanguage.japanese,
        order: 2,
        isStarter: true,
        xpReward: 42,
        emoji: '🌊',
      ),
      LessonIsland(
        lessonId: 'ja_intro_3',
        title: 'Morning Grove',
        subtitle: 'Warm up daily phrases',
        description:
            'Practice core morning expressions and simple daily conversation.',
        language: SupportedLanguage.japanese,
        order: 3,
        xpReward: 60,
        emoji: '🌤️',
      ),
      LessonIsland(
        lessonId: 'ja_intro_4',
        title: 'Thanks Trail',
        subtitle: 'Polite gratitude practice',
        description: 'Build polite thanks and response patterns.',
        language: SupportedLanguage.japanese,
        order: 4,
        xpReward: 66,
        emoji: '🎁',
      ),
      LessonIsland(
        lessonId: 'ja_intro_5',
        title: 'Review Summit',
        subtitle: 'Climb the recap challenge',
        description: 'Review key Japanese greetings and phrases in one run.',
        language: SupportedLanguage.japanese,
        order: 5,
        xpReward: 72,
        emoji: '⛰️',
      ),
      LessonIsland(
        lessonId: 'en_present_simple_1',
        title: 'Present Simple Pier',
        subtitle: 'Talk about habits and facts',
        description: 'Learn when and how to use Present Simple in English.',
        language: SupportedLanguage.english,
        order: 1,
        progress: 0.55,
        xpReward: 50,
        emoji: '🗣️',
      ),
      LessonIsland(
        lessonId: 'en_present_simple_2',
        title: 'Daily Routines Dock',
        subtitle: 'Practice real daily actions',
        description: 'Use common verbs to describe routines and habits.',
        language: SupportedLanguage.english,
        order: 2,
        xpReward: 55,
        emoji: '🧠',
      ),
      LessonIsland(
        lessonId: 'en_present_simple_3',
        title: 'Question Quay',
        subtitle: 'Ask and answer in present simple',
        description: 'Use do and does to ask correct questions.',
        language: SupportedLanguage.english,
        order: 3,
        xpReward: 58,
        emoji: '🚀',
      ),
    ];
  }
}
