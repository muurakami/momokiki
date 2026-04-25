// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashcardReviewImpl _$$FlashcardReviewImplFromJson(
        Map<String, dynamic> json) =>
    _$FlashcardReviewImpl(
      id: json['id'] as String,
      cardId: json['cardId'] as String,
      reviewedAt: DateTime.parse(json['reviewedAt'] as String),
      rating: $enumDecode(_$ReviewRatingEnumMap, json['rating']),
      queueBefore: json['queueBefore'] as String,
      queueAfter: json['queueAfter'] as String,
      intervalBeforeDays: (json['intervalBeforeDays'] as num?)?.toInt() ?? 0,
      intervalAfterDays: (json['intervalAfterDays'] as num?)?.toInt() ?? 0,
      easeBeforeMilli: (json['easeBeforeMilli'] as num?)?.toInt() ?? 2500,
      easeAfterMilli: (json['easeAfterMilli'] as num?)?.toInt() ?? 2500,
      elapsedMs: (json['elapsedMs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FlashcardReviewImplToJson(
        _$FlashcardReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardId': instance.cardId,
      'reviewedAt': instance.reviewedAt.toIso8601String(),
      'rating': _$ReviewRatingEnumMap[instance.rating]!,
      'queueBefore': instance.queueBefore,
      'queueAfter': instance.queueAfter,
      'intervalBeforeDays': instance.intervalBeforeDays,
      'intervalAfterDays': instance.intervalAfterDays,
      'easeBeforeMilli': instance.easeBeforeMilli,
      'easeAfterMilli': instance.easeAfterMilli,
      'elapsedMs': instance.elapsedMs,
    };

const _$ReviewRatingEnumMap = {
  ReviewRating.again: 'again',
  ReviewRating.hard: 'hard',
  ReviewRating.good: 'good',
  ReviewRating.easy: 'easy',
};
