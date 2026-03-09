import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/user_profile.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../../../core/di/injection.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  AuthRepository get _repo => getIt<AuthRepository>();

  @override
  Future<UserProfile?> build() => _repo.getCurrentUser();

  Future<void> signInWithEmail(String email, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _repo.signInWithEmail(email, password),
    );
  }

  Future<void> signUpWithEmail(
      String email, String password, String displayName) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _repo.signUpWithEmail(email, password, displayName),
    );
  }

  Future<void> signInWithGoogle() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _repo.signInWithGoogle());
  }

  Future<void> signInAsGuest() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _repo.signInAsGuest());
  }

  Future<void> signOut() async {
    await _repo.signOut();
    state = const AsyncData(null);
  }

  Future<void> saveOnboarding({
    required String targetLanguage,
    required String cefrLevel,
    required int dailyGoalMinutes,
  }) async {
    state = await AsyncValue.guard(
      () => _repo.saveOnboardingProfile(
        targetLanguage: targetLanguage,
        cefrLevel: cefrLevel,
        dailyGoalMinutes: dailyGoalMinutes,
        onboardingCompleted: true,
      ),
    );
  }
}
