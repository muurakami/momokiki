import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../domain/models/user_profile.dart';

@singleton
class SupabaseAuthDatasource {
  static const String _cachedUserProfileKey = 'cached_user_profile_v1';
  static const String _offlineGuestId = 'guest-user';
  static const Duration _remoteTimeout = Duration(seconds: 3);

  final _client = Supabase.instance.client;

  Stream<UserProfile?> get authStateChanges => _client.auth.onAuthStateChange
      .asyncMap((event) => _handleAuthStateChange(event.session?.user));

  Future<UserProfile?> getCurrentUser() async {
    final cachedProfile = await _readCachedProfile();
    final currentUser = _client.auth.currentUser;

    if (currentUser == null) {
      if (_isOfflineGuestProfile(cachedProfile)) {
        return cachedProfile;
      }

      if (cachedProfile != null) {
        await _clearCachedProfile();
      }

      return null;
    }

    if (cachedProfile != null && cachedProfile.id == currentUser.id) {
      unawaited(_refreshProfileInBackground(currentUser, cachedProfile));
      return cachedProfile;
    }

    final fallbackProfile = _buildLocalFallbackProfile(
      currentUser,
      cachedProfile: cachedProfile?.id == currentUser.id ? cachedProfile : null,
    );
    await _writeCachedProfile(fallbackProfile);
    unawaited(_refreshProfileInBackground(currentUser, fallbackProfile));
    return fallbackProfile;
  }

  Future<UserProfile> signInWithEmail(String email, String password) async {
    final res = await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return _resolveSignedInProfile(res.user!);
  }

  Future<UserProfile> signUpWithEmail(
      String email, String password, String displayName) async {
    final res = await _client.auth.signUp(
      email: email,
      password: password,
      data: {'display_name': displayName},
    );
    return _resolveSignedInProfile(res.user!, displayName: displayName);
  }

  Future<UserProfile> signInWithGoogle() async {
    await _client.auth.signInWithOAuth(
      OAuthProvider.google,
      redirectTo: 'io.momokiki.app://login-callback',
    );

    final user = await _waitForAuthenticatedUserAfterOAuth();
    return _resolveSignedInProfile(user);
  }

  Future<User> _waitForAuthenticatedUserAfterOAuth() async {
    final currentUser = _client.auth.currentUser;
    if (currentUser != null) {
      return currentUser;
    }

    try {
      final user = await _client.auth.onAuthStateChange
          .map((event) => event.session?.user)
          .firstWhere((user) => user != null)
          .timeout(const Duration(seconds: 30));

      return user!;
    } on TimeoutException catch (_) {
      throw TimeoutException(
        'Google sign-in did not produce an authenticated session within 30 seconds.',
      );
    }
  }

  Future<UserProfile> signInAsGuest() async {
    try {
      final res = await _client.auth
          .signInAnonymously()
          .timeout(_remoteTimeout);
      return _resolveSignedInProfile(
        res.user!,
        displayName: 'Guest',
        isGuest: true,
      );
    } on TimeoutException {
      return _createOfflineGuestProfile();
    } catch (_) {
      return _createOfflineGuestProfile();
    }
  }

  Future<void> signOut() async {
    await _clearCachedProfile();

    try {
      await _client.auth.signOut().timeout(_remoteTimeout);
    } catch (_) {
      // Local cache is already cleared. Remote sign out is best-effort.
    }
  }

  Future<UserProfile> saveOnboardingProfile({
    required String targetLanguage,
    required String cefrLevel,
    required int dailyGoalMinutes,
    required bool onboardingCompleted,
  }) async {
    final currentProfile = await _getLocalCurrentProfile();
    final updatedProfile = currentProfile.copyWith(
      targetLanguage: targetLanguage,
      cefrLevel: cefrLevel,
      dailyGoalMinutes: dailyGoalMinutes,
      onboardingCompleted: onboardingCompleted,
    );

    await _writeCachedProfile(updatedProfile);
    unawaited(_syncProfileUpdate(updatedProfile));
    return updatedProfile;
  }

  Future<UserProfile?> _handleAuthStateChange(User? user) async {
    if (user == null) {
      final cachedProfile = await _readCachedProfile();
      if (cachedProfile != null && !_isOfflineGuestProfile(cachedProfile)) {
        await _clearCachedProfile();
      }
      return _isOfflineGuestProfile(cachedProfile) ? cachedProfile : null;
    }

    final cachedProfile = await _readCachedProfile();
    final fallbackProfile = _buildLocalFallbackProfile(
      user,
      cachedProfile: cachedProfile?.id == user.id ? cachedProfile : null,
    );
    await _writeCachedProfile(fallbackProfile);
    unawaited(_refreshProfileInBackground(user, fallbackProfile));
    return fallbackProfile;
  }

  Future<UserProfile> _resolveSignedInProfile(
    User user, {
    String? displayName,
    bool isGuest = false,
  }) async {
    final cachedProfile = await _readCachedProfile();
    final fallbackProfile = _buildLocalFallbackProfile(
      user,
      cachedProfile: cachedProfile?.id == user.id ? cachedProfile : null,
      displayName: displayName,
      isGuest: isGuest,
    );
    await _writeCachedProfile(fallbackProfile);

    final remoteProfile = await _upsertProfile(
      user,
      baseProfile: fallbackProfile,
      displayName: displayName,
      isGuest: isGuest,
    );

    if (remoteProfile != null) {
      return remoteProfile;
    }

    unawaited(_refreshProfileInBackground(user, fallbackProfile));
    return fallbackProfile;
  }

  Future<UserProfile?> _upsertProfile(
    User user, {
    required UserProfile baseProfile,
    String? displayName,
    bool? isGuest,
  }) async {
    final name = displayName ??
        (user.userMetadata?['display_name'] as String?) ??
        (user.userMetadata?['full_name'] as String?) ??
        baseProfile.displayName;
    final now = DateTime.now().toIso8601String();
    final Map<String, dynamic> payload = {
      'id': user.id,
      'display_name': name,
      'target_language': baseProfile.targetLanguage,
      'native_language': baseProfile.nativeLanguage,
      'cefr_level': baseProfile.cefrLevel,
      'daily_goal_minutes': baseProfile.dailyGoalMinutes,
      'xp_total': baseProfile.xpTotal,
      'level': baseProfile.level,
      'streak_days': baseProfile.streakDays,
      'longest_streak': baseProfile.longestStreak,
      'streak_last_date': baseProfile.streakLastDate?.toIso8601String(),
      'hearts': baseProfile.hearts,
      'hearts_refill_at': baseProfile.heartsRefillAt?.toIso8601String(),
      'crystals': baseProfile.crystals,
      'freezes_available': baseProfile.freezesAvailable,
      'is_guest': isGuest ?? baseProfile.isGuest,
      'created_at': baseProfile.createdAt.toIso8601String(),
      'updated_at': now,
      'onboarding_completed': baseProfile.onboardingCompleted,
    };

    if (user.email != null) {
      payload['email'] = user.email;
    }

    try {
      final data = await _client
          .from('users')
          .upsert(payload, onConflict: 'id')
          .select()
          .single()
          .timeout(_remoteTimeout);

      final profile = UserProfile.fromJson(data);
      await _writeCachedProfile(profile);
      return profile;
    } catch (_) {
      return null;
    }
  }

  Future<UserProfile> updatePreferredLanguage({
    required String targetLanguage,
  }) async {
    final currentProfile = await _getLocalCurrentProfile();
    final updatedProfile = currentProfile.copyWith(
      targetLanguage: targetLanguage,
    );

    await _writeCachedProfile(updatedProfile);
    unawaited(_syncProfileUpdate(updatedProfile));
    return updatedProfile;
  }

  Future<void> _refreshProfileInBackground(
    User user,
    UserProfile fallbackProfile,
  ) async {
    try {
      final existing = await _client
          .from('users')
          .select()
          .eq('id', user.id)
          .maybeSingle()
          .timeout(_remoteTimeout);

      if (existing != null) {
        await _writeCachedProfile(UserProfile.fromJson(existing));
        return;
      }

      await _upsertProfile(user, baseProfile: fallbackProfile);
    } catch (_) {
      // Startup path stays local-first.
    }
  }

  Future<void> _syncProfileUpdate(UserProfile profile) async {
    final currentUser = _client.auth.currentUser;
    if (currentUser == null || currentUser.id != profile.id) {
      return;
    }

    try {
      final data = await _client
          .from('users')
          .upsert({
            'id': profile.id,
            'email': currentUser.email,
            'display_name': profile.displayName,
            'avatar_url': profile.avatarUrl,
            'target_language': profile.targetLanguage,
            'native_language': profile.nativeLanguage,
            'cefr_level': profile.cefrLevel,
            'daily_goal_minutes': profile.dailyGoalMinutes,
            'xp_total': profile.xpTotal,
            'level': profile.level,
            'streak_days': profile.streakDays,
            'longest_streak': profile.longestStreak,
            'streak_last_date': profile.streakLastDate?.toIso8601String(),
            'hearts': profile.hearts,
            'hearts_refill_at': profile.heartsRefillAt?.toIso8601String(),
            'crystals': profile.crystals,
            'freezes_available': profile.freezesAvailable,
            'is_guest': profile.isGuest,
            'created_at': profile.createdAt.toIso8601String(),
            'updated_at': DateTime.now().toIso8601String(),
            'onboarding_completed': profile.onboardingCompleted,
          }, onConflict: 'id')
          .select()
          .single()
          .timeout(_remoteTimeout);

      await _writeCachedProfile(UserProfile.fromJson(data));
    } catch (_) {
      // UI already has the local-first update.
    }
  }

  Future<UserProfile> _createOfflineGuestProfile() async {
    final cachedProfile = await _readCachedProfile();
    final profile = (cachedProfile != null && _isOfflineGuestProfile(cachedProfile))
        ? cachedProfile
        : UserProfile(
            id: _offlineGuestId,
            displayName: 'Guest',
            isGuest: true,
            createdAt: DateTime.now(),
          );

    await _writeCachedProfile(profile);
    return profile;
  }

  UserProfile _buildLocalFallbackProfile(
    User user, {
    UserProfile? cachedProfile,
    String? displayName,
    bool? isGuest,
  }) {
    final resolvedDisplayName = displayName ??
        (user.userMetadata?['display_name'] as String?) ??
        (user.userMetadata?['full_name'] as String?) ??
        cachedProfile?.displayName ??
        user.email?.split('@').first ??
        'Guest';

    return UserProfile(
      id: user.id,
      email: user.email ?? cachedProfile?.email,
      displayName: resolvedDisplayName,
      avatarUrl: (user.userMetadata?['avatar_url'] as String?) ??
          cachedProfile?.avatarUrl,
      targetLanguage: cachedProfile?.targetLanguage ?? 'ja',
      nativeLanguage: cachedProfile?.nativeLanguage ?? 'en',
      cefrLevel: cachedProfile?.cefrLevel ?? 'A1',
      dailyGoalMinutes: cachedProfile?.dailyGoalMinutes ?? 10,
      xpTotal: cachedProfile?.xpTotal ?? 0,
      level: cachedProfile?.level ?? 1,
      streakDays: cachedProfile?.streakDays ?? 0,
      longestStreak: cachedProfile?.longestStreak ?? 0,
      streakLastDate: cachedProfile?.streakLastDate,
      hearts: cachedProfile?.hearts ?? 5,
      heartsRefillAt: cachedProfile?.heartsRefillAt,
      crystals: cachedProfile?.crystals ?? 0,
      freezesAvailable: cachedProfile?.freezesAvailable ?? 0,
      isGuest: isGuest ?? cachedProfile?.isGuest ?? false,
      createdAt: cachedProfile?.createdAt ?? DateTime.now(),
      onboardingCompleted: cachedProfile?.onboardingCompleted ?? false,
    );
  }

  Future<UserProfile> _getLocalCurrentProfile() async {
    final cachedProfile = await _readCachedProfile();
    final currentUser = _client.auth.currentUser;

    if (currentUser != null) {
      return _buildLocalFallbackProfile(
        currentUser,
        cachedProfile: cachedProfile?.id == currentUser.id ? cachedProfile : null,
      );
    }

    if (_isOfflineGuestProfile(cachedProfile)) {
      return cachedProfile!;
    }

    throw StateError('No local auth profile available');
  }

  bool _isOfflineGuestProfile(UserProfile? profile) {
    return profile != null && profile.isGuest && profile.id == _offlineGuestId;
  }

  Future<UserProfile?> _readCachedProfile() async {
    final preferences = await SharedPreferences.getInstance();
    final rawProfile = preferences.getString(_cachedUserProfileKey);
    if (rawProfile == null || rawProfile.isEmpty) {
      return null;
    }

    try {
      final decoded = jsonDecode(rawProfile);
      if (decoded is! Map) {
        await _clearCachedProfile();
        return null;
      }

      return UserProfile.fromJson(Map<String, dynamic>.from(decoded));
    } catch (_) {
      await _clearCachedProfile();
      return null;
    }
  }

  Future<void> _writeCachedProfile(UserProfile profile) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(
      _cachedUserProfileKey,
      jsonEncode(profile.toJson()),
    );
  }

  Future<void> _clearCachedProfile() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.remove(_cachedUserProfileKey);
  }
}
