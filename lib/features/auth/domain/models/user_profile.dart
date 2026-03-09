import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@Freezed(fromJson: true, toJson: true)
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    String? email,
    @JsonKey(name: 'display_name') @Default('Guest') String displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'target_language') @Default('ja') String targetLanguage,
    @JsonKey(name: 'native_language') @Default('en') String nativeLanguage,
    @JsonKey(name: 'cefr_level') @Default('A1') String cefrLevel,
    @JsonKey(name: 'daily_goal_minutes') @Default(10) int dailyGoalMinutes,
    @JsonKey(name: 'xp_total') @Default(0) int xpTotal,
    @Default(1) int level,
    @JsonKey(name: 'streak_days') @Default(0) int streakDays,
    @JsonKey(name: 'longest_streak') @Default(0) int longestStreak,
    @JsonKey(name: 'streak_last_date') DateTime? streakLastDate,
    @Default(5) int hearts,
    @JsonKey(name: 'hearts_refill_at') DateTime? heartsRefillAt,
    @Default(0) int crystals,
    
    @JsonKey(name: 'freezes_available') @Default(0) int freezesAvailable,
    @JsonKey(name: 'is_guest') @Default(false) bool isGuest,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'onboarding_completed') @Default(false) bool onboardingCompleted,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
