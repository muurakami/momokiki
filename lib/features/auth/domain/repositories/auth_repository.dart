import '../models/user_profile.dart';

abstract class AuthRepository {
  Stream<UserProfile?> get authStateChanges;
  Future<UserProfile?> getCurrentUser();
  Future<UserProfile> signInWithEmail(String email, String password);
  Future<UserProfile> signUpWithEmail(
      String email, String password, String displayName);
  Future<UserProfile> signInWithGoogle();
  Future<UserProfile> signInAsGuest();
  Future<void> signOut();
  Future<UserProfile> saveOnboardingProfile({
    required String targetLanguage,
    required String cefrLevel,
    required int dailyGoalMinutes,
    required bool onboardingCompleted,
  });
}
