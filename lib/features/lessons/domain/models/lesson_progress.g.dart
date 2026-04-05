// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonProgressImpl _$$LessonProgressImplFromJson(Map<String, dynamic> json) =>
    _$LessonProgressImpl(
      lessonId: json['lessonId'] as String,
      userId: json['userId'] as String,
      currentBlockIndex: (json['currentBlockIndex'] as num?)?.toInt() ?? 0,
      correctAnswers: (json['correctAnswers'] as num?)?.toInt() ?? 0,
      answeredBlocks: (json['answeredBlocks'] as num?)?.toInt() ?? 0,
      attemptCount: (json['attemptCount'] as num?)?.toInt() ?? 0,
      incorrectAnswers: (json['incorrectAnswers'] as num?)?.toInt() ?? 0,
      earnedXp: (json['earnedXp'] as num?)?.toInt() ?? 0,
      isCompleted: json['isCompleted'] as bool? ?? false,
      lastBlockId: json['lastBlockId'] as String?,
      completedBlockIds: (json['completedBlockIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      lastAttemptAt: json['lastAttemptAt'] == null
          ? null
          : DateTime.parse(json['lastAttemptAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$LessonProgressImplToJson(
        _$LessonProgressImpl instance) =>
    <String, dynamic>{
      'lessonId': instance.lessonId,
      'userId': instance.userId,
      'currentBlockIndex': instance.currentBlockIndex,
      'correctAnswers': instance.correctAnswers,
      'answeredBlocks': instance.answeredBlocks,
      'attemptCount': instance.attemptCount,
      'incorrectAnswers': instance.incorrectAnswers,
      'earnedXp': instance.earnedXp,
      'isCompleted': instance.isCompleted,
      'lastBlockId': instance.lastBlockId,
      'completedBlockIds': instance.completedBlockIds,
      'lastAttemptAt': instance.lastAttemptAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
    };

_$LessonBlockResultImpl _$$LessonBlockResultImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonBlockResultImpl(
      lessonId: json['lessonId'] as String,
      blockId: json['blockId'] as String,
      blockType: json['blockType'] as String,
      isCorrect: json['isCorrect'] as bool,
      earnedXp: (json['earnedXp'] as num?)?.toInt() ?? 0,
      attemptNumber: (json['attemptNumber'] as num?)?.toInt() ?? 1,
      timeSpentSeconds: (json['timeSpentSeconds'] as num?)?.toInt(),
      submittedAnswer: json['submittedAnswer'] as String?,
      correctAnswerLabel: json['correctAnswerLabel'] as String?,
      feedbackMessage: json['feedbackMessage'] as String?,
      shouldRetry: json['shouldRetry'] as bool? ?? false,
      selectedOptionIds: (json['selectedOptionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$LessonBlockResultImplToJson(
        _$LessonBlockResultImpl instance) =>
    <String, dynamic>{
      'lessonId': instance.lessonId,
      'blockId': instance.blockId,
      'blockType': instance.blockType,
      'isCorrect': instance.isCorrect,
      'earnedXp': instance.earnedXp,
      'attemptNumber': instance.attemptNumber,
      'timeSpentSeconds': instance.timeSpentSeconds,
      'submittedAnswer': instance.submittedAnswer,
      'correctAnswerLabel': instance.correctAnswerLabel,
      'feedbackMessage': instance.feedbackMessage,
      'shouldRetry': instance.shouldRetry,
      'selectedOptionIds': instance.selectedOptionIds,
    };

_$LessonSummaryImpl _$$LessonSummaryImplFromJson(Map<String, dynamic> json) =>
    _$LessonSummaryImpl(
      lessonId: json['lessonId'] as String,
      totalBlocks: (json['totalBlocks'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      earnedXp: (json['earnedXp'] as num).toInt(),
      accuracy: (json['accuracy'] as num).toDouble(),
      totalAttempts: (json['totalAttempts'] as num?)?.toInt() ?? 0,
      levelBefore: (json['levelBefore'] as num?)?.toInt() ?? 1,
      levelAfter: (json['levelAfter'] as num?)?.toInt() ?? 1,
      totalXpAfter: (json['totalXpAfter'] as num?)?.toInt() ?? 0,
      nextLessonId: json['nextLessonId'] as String?,
    );

Map<String, dynamic> _$$LessonSummaryImplToJson(_$LessonSummaryImpl instance) =>
    <String, dynamic>{
      'lessonId': instance.lessonId,
      'totalBlocks': instance.totalBlocks,
      'correctAnswers': instance.correctAnswers,
      'earnedXp': instance.earnedXp,
      'accuracy': instance.accuracy,
      'totalAttempts': instance.totalAttempts,
      'levelBefore': instance.levelBefore,
      'levelAfter': instance.levelAfter,
      'totalXpAfter': instance.totalXpAfter,
      'nextLessonId': instance.nextLessonId,
    };

_$UserStatsImpl _$$UserStatsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatsImpl(
      userId: json['userId'] as String,
      totalXp: (json['totalXp'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 1,
      totalLessonsCompleted:
          (json['totalLessonsCompleted'] as num?)?.toInt() ?? 0,
      totalBlocksAnswered: (json['totalBlocksAnswered'] as num?)?.toInt() ?? 0,
      totalCorrectBlocks: (json['totalCorrectBlocks'] as num?)?.toInt() ?? 0,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserStatsImplToJson(_$UserStatsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'totalXp': instance.totalXp,
      'level': instance.level,
      'totalLessonsCompleted': instance.totalLessonsCompleted,
      'totalBlocksAnswered': instance.totalBlocksAnswered,
      'totalCorrectBlocks': instance.totalCorrectBlocks,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$ProgressSyncPayloadImpl _$$ProgressSyncPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressSyncPayloadImpl(
      progress:
          LessonProgress.fromJson(json['progress'] as Map<String, dynamic>),
      stats: UserStats.fromJson(json['stats'] as Map<String, dynamic>),
      result:
          LessonBlockResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProgressSyncPayloadImplToJson(
        _$ProgressSyncPayloadImpl instance) =>
    <String, dynamic>{
      'progress': instance.progress,
      'stats': instance.stats,
      'result': instance.result,
    };

_$LessonAttemptImpl _$$LessonAttemptImplFromJson(Map<String, dynamic> json) =>
    _$LessonAttemptImpl(
      userId: json['userId'] as String,
      lessonId: json['lessonId'] as String,
      blockId: json['blockId'] as String,
      attemptNumber: (json['attemptNumber'] as num).toInt(),
      submittedAnswer: json['submittedAnswer'] as String?,
      selectedOptionIds: (json['selectedOptionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isCorrect: json['isCorrect'] as bool,
      feedbackMessage: json['feedbackMessage'] as String?,
      earnedXp: (json['earnedXp'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$LessonAttemptImplToJson(_$LessonAttemptImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'lessonId': instance.lessonId,
      'blockId': instance.blockId,
      'attemptNumber': instance.attemptNumber,
      'submittedAnswer': instance.submittedAnswer,
      'selectedOptionIds': instance.selectedOptionIds,
      'isCorrect': instance.isCorrect,
      'feedbackMessage': instance.feedbackMessage,
      'earnedXp': instance.earnedXp,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
