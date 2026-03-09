import 'package:injectable/injectable.dart';
import '../../domain/models/user_profile.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/supabase_auth_datasource.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final SupabaseAuthDatasource _datasource;
  AuthRepositoryImpl(this._datasource);

  @override
  Stream<UserProfile?> get authStateChanges => _datasource.authStateChanges;

  @override
  Future<UserProfile?> getCurrentUser() => _datasource.getCurrentUser();

  @override
  Future<UserProfile> signInWithEmail(String email, String password) =>
      _datasource.signInWithEmail(email, password);

  @override
  Future<UserProfile> signUpWithEmail(
          String email, String password, String displayName) =>
      _datasource.signUpWithEmail(email, password, displayName);

  @override
  Future<UserProfile> signInWithGoogle() => _datasource.signInWithGoogle();

  @override
  Future<UserProfile> signInAsGuest() => _datasource.signInAsGuest();

  @override
  Future<void> signOut() => _datasource.signOut();

  @override
  Future<UserProfile> saveOnboardingProfile({
    required String targetLanguage,
    required String cefrLevel,
    required int dailyGoalMinutes,
    required bool onboardingCompleted,
  }) {
    return _datasource.saveOnboardingProfile(
      userId: _datasource.currentUserId, // ← см. ниже
      targetLanguage: targetLanguage,
      cefrLevel: cefrLevel,
      dailyGoalMinutes: dailyGoalMinutes,
      onboardingCompleted: onboardingCompleted,
    );
  }
}
