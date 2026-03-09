import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'onboarding_notifier.freezed.dart';
part 'onboarding_notifier.g.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default('ja') String targetLanguage,
    @Default('A1') String cefrLevel,
    @Default(10) int dailyGoalMinutes,
  }) = _OnboardingState;
}

@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
  @override
  OnboardingState build() => const OnboardingState();

  void setLanguage(String code) => state = state.copyWith(targetLanguage: code);

  void setCefrLevel(String level) => state = state.copyWith(cefrLevel: level);

  void setDailyGoal(int minutes) =>
      state = state.copyWith(dailyGoalMinutes: minutes);
}
