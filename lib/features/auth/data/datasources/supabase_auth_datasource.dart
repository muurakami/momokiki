import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../domain/models/user_profile.dart';

@singleton
class SupabaseAuthDatasource {
  final _client = Supabase.instance.client;

  Stream<UserProfile?> get authStateChanges => _client.auth.onAuthStateChange
      .asyncMap((event) => _fetchOrCreateProfile(event.session?.user));

  Future<UserProfile?> getCurrentUser() =>
      _fetchOrCreateProfile(_client.auth.currentUser);

  Future<UserProfile> signInWithEmail(String email, String password) async {
    final res = await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return _fetchOrCreateProfile(res.user).then((p) => p!);
  }

  Future<UserProfile> signUpWithEmail(
      String email, String password, String displayName) async {
    final res = await _client.auth.signUp(
      email: email,
      password: password,
      data: {'display_name': displayName},
    );
    return _upsertProfile(res.user!, displayName: displayName);
  }

  Future<UserProfile> signInWithGoogle() async {
    await _client.auth.signInWithOAuth(
      OAuthProvider.google,
      redirectTo: 'io.momokiki.app://login-callback',
    );
    // Wait for session after redirect
    final user = _client.auth.currentUser;
    return _fetchOrCreateProfile(user).then((p) => p!);
  }

  Future<UserProfile> signInAsGuest() async {
    final res = await _client.auth.signInAnonymously();
    return _upsertProfile(res.user!, displayName: 'Guest', isGuest: true);
  }

  Future<void> signOut() => _client.auth.signOut();

  Future<UserProfile> saveOnboardingProfile({
    required String userId,
    required String targetLanguage,
    required String cefrLevel,
    required int dailyGoalMinutes,
    required bool onboardingCompleted,
  }) async {
    final data = await _client
        .from('users')
        .update({
          'target_language': targetLanguage,
          'cefr_level': cefrLevel,
          'daily_goal_minutes': dailyGoalMinutes,
          'onboarding_completed': onboardingCompleted,
        })
        .eq('id', userId)
        .select()
        .single();
    return UserProfile.fromJson(data);
  }

  Future<UserProfile?> _fetchOrCreateProfile(User? user) async {
    if (user == null) return null;
    final existing =
        await _client.from('users').select().eq('id', user.id).maybeSingle();
    if (existing != null) return UserProfile.fromJson(existing);
    return _upsertProfile(user);
  }

  Future<UserProfile> _upsertProfile(
    User user, {
    String? displayName,
    bool isGuest = false,
  }) async {
    final name = displayName ??
        (user.userMetadata?['display_name'] as String?) ??
        (user.userMetadata?['full_name'] as String?) ??
        user.email?.split('@').first ??
        'Guest';
    final now = DateTime.now().toIso8601String();
    final Map<String, dynamic> payload = {
      'id': user.id,
      'display_name': name,
      'is_guest': isGuest,
      'created_at': now,
      'updated_at': now,
    };

    if (user.email != null) {
      payload['email'] = user.email;
    }

    final data = await _client
        .from('users')
        .upsert(payload, onConflict: 'id')
        .select()
        .single();

    return UserProfile.fromJson(data);
  }

  String get currentUserId => _client.auth.currentUser!.id;
}
