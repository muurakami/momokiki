// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardCardImpl _$$FlashcardCardImplFromJson(Map<String, dynamic> json) =>
    _$FlashcardCardImpl(
      id: json['id'] as String,
      deckId: json['deckId'] as String,
      frontHtml: json['frontHtml'] as String,
      backHtml: json['backHtml'] as String,
      frontPlain: json['frontPlain'] as String,
      backPlain: json['backPlain'] as String,
      queue: json['queue'] as String? ?? 'new',
      dueAt: json['dueAt'] == null
          ? null
          : DateTime.parse(json['dueAt'] as String),
      dueDay: (json['dueDay'] as num?)?.toInt(),
      intervalDays: (json['intervalDays'] as num?)?.toInt() ?? 0,
      easeFactorMilli: (json['easeFactorMilli'] as num?)?.toInt() ?? 2500,
      reps: (json['reps'] as num?)?.toInt() ?? 0,
      lapses: (json['lapses'] as num?)?.toInt() ?? 0,
      remainingSteps: (json['remainingSteps'] as num?)?.toInt() ?? 0,
      learningStepIndex: (json['learningStepIndex'] as num?)?.toInt() ?? 0,
      lastReviewedAt: json['lastReviewedAt'] == null
          ? null
          : DateTime.parse(json['lastReviewedAt'] as String),
      isLeech: json['isLeech'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FlashcardCardImplToJson(_$FlashcardCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deckId': instance.deckId,
      'frontHtml': instance.frontHtml,
      'backHtml': instance.backHtml,
      'frontPlain': instance.frontPlain,
      'backPlain': instance.backPlain,
      'queue': instance.queue,
      'dueAt': instance.dueAt?.toIso8601String(),
      'dueDay': instance.dueDay,
      'intervalDays': instance.intervalDays,
      'easeFactorMilli': instance.easeFactorMilli,
      'reps': instance.reps,
      'lapses': instance.lapses,
      'remainingSteps': instance.remainingSteps,
      'learningStepIndex': instance.learningStepIndex,
      'lastReviewedAt': instance.lastReviewedAt?.toIso8601String(),
      'isLeech': instance.isLeech,
      'tags': instance.tags,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
