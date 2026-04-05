import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/learning_content.dart';

part 'learning_catalog_state.freezed.dart';

@freezed
class LearningCatalogState with _$LearningCatalogState {
  const factory LearningCatalogState({
    @Default(SupportedLanguage.english) SupportedLanguage selectedLanguage,
    @Default(<LessonIsland>[]) List<LessonIsland> lessons,
    @Default(<RoadmapDocument>[]) List<RoadmapDocument> roadmaps,
    @Default(0) int totalXp,
    @Default(1) int level,
    @Default(0) double levelProgress,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LearningCatalogState;
}
