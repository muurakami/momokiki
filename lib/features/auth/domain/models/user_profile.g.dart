// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      displayName: json['display_name'] as String? ?? 'Guest',
      avatarUrl: json['avatar_url'] as String?,
      targetLanguage: json['target_language'] as String? ?? 'ja',
      nativeLanguage: json['native_language'] as String? ?? 'en',
      cefrLevel: json['cefr_level'] as String? ?? 'A1',
      dailyGoalMinutes: (json['daily_goal_minutes'] as num?)?.toInt() ?? 10,
      xpTotal: (json['xp_total'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 1,
      streakDays: (json['streak_days'] as num?)?.toInt() ?? 0,
      longestStreak: (json['longest_streak'] as num?)?.toInt() ?? 0,
      streakLastDate: json['streak_last_date'] == null
          ? null
          : DateTime.parse(json['streak_last_date'] as String),
      hearts: (json['hearts'] as num?)?.toInt() ?? 5,
      heartsRefillAt: json['hearts_refill_at'] == null
          ? null
          : DateTime.parse(json['hearts_refill_at'] as String),
      crystals: (json['crystals'] as num?)?.toInt() ?? 0,
      freezesAvailable: (json['freezes_available'] as num?)?.toInt() ?? 0,
      isGuest: json['is_guest'] as bool? ?? false,
      createdAt: DateTime.parse(json['created_at'] as String),
      onboardingCompleted: json['onboarding_completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'display_name': instance.displayName,
      'avatar_url': instance.avatarUrl,
      'target_language': instance.targetLanguage,
      'native_language': instance.nativeLanguage,
      'cefr_level': instance.cefrLevel,
      'daily_goal_minutes': instance.dailyGoalMinutes,
      'xp_total': instance.xpTotal,
      'level': instance.level,
      'streak_days': instance.streakDays,
      'longest_streak': instance.longestStreak,
      'streak_last_date': instance.streakLastDate?.toIso8601String(),
      'hearts': instance.hearts,
      'hearts_refill_at': instance.heartsRefillAt?.toIso8601String(),
      'crystals': instance.crystals,
      'freezes_available': instance.freezesAvailable,
      'is_guest': instance.isGuest,
      'created_at': instance.createdAt.toIso8601String(),
      'onboarding_completed': instance.onboardingCompleted,
    };
