import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../auth/domain/models/user_profile.dart';
import '../../../auth/presentation/notifiers/auth_notifier.dart';

part 'app_preferences_notifier.g.dart';

@Riverpod(keepAlive: true)
class AppPreferencesNotifier extends _$AppPreferencesNotifier {
  static const _legacyLanguageKey = 'preferred_language';
  static const _guestLanguageKey = 'guest_language';
  static const _profileLanguageKey = 'profile_language';

  String? _sessionLanguage;

  @override
  Future<String> build() async {
    ref.listen<AsyncValue<UserProfile?>>(authNotifierProvider, (_, __) {
      unawaited(_refreshResolvedLanguage(reason: 'auth_change'));
    });

    return _resolvePreferredLanguage(reason: 'build');
  }

  Future<void> setPreferredLanguage(String languageCode) async {
    final normalized = _normalizeRequiredLanguageCode(languageCode);
    _sessionLanguage = normalized;

    final preferences = await SharedPreferences.getInstance();
    final profile = await _readCurrentProfile();

    if (profile != null && !profile.isGuest) {
      await preferences.setString(_profileLanguageKey, normalized);
    } else {
      await preferences.setString(_guestLanguageKey, normalized);
    }

    await preferences.remove(_legacyLanguageKey);
    state = AsyncData(normalized);

    if (kDebugMode) {
      debugPrint(
        'AppPreferencesNotifier[set]: language=$normalized, '
        'session=explicit, user=${profile?.id ?? 'none'}, guest=${profile?.isGuest ?? false}',
      );
    }
  }

  Future<void> resetToSystemLanguage() async {
    _sessionLanguage = null;

    final preferences = await SharedPreferences.getInstance();
    await preferences.remove(_profileLanguageKey);
    await preferences.remove(_legacyLanguageKey);

    final systemLanguage = _systemDefaultLanguage();
    state = AsyncData(systemLanguage);

    if (kDebugMode) {
      debugPrint(
        'AppPreferencesNotifier[reset]: resolved=$systemLanguage, source=system_default',
      );
    }
  }

  Future<void> refreshResolvedLanguage() async {
    await _refreshResolvedLanguage(reason: 'manual_refresh');
  }

  @visibleForTesting
  String get debugSystemDefaultLanguage => _systemDefaultLanguage();

  Future<void> _refreshResolvedLanguage({required String reason}) async {
    final resolved = await _resolvePreferredLanguage(reason: reason);
    state = AsyncData(resolved);
  }

  Future<String> _resolvePreferredLanguage({required String reason}) async {
    final sessionLanguage = _normalizeOptionalLanguageCode(_sessionLanguage);
    if (sessionLanguage != null) {
      _logResolution(
        reason: reason,
        source: 'session_explicit',
        resolved: sessionLanguage,
      );
      return sessionLanguage;
    }

    final preferences = await SharedPreferences.getInstance();
    final profile = await _readCurrentProfile();
    final guestLanguage = _normalizeOptionalLanguageCode(
      preferences.getString(_guestLanguageKey),
    );
    final cachedProfileLanguage = _normalizeOptionalLanguageCode(
      preferences.getString(_profileLanguageKey) ??
          preferences.getString(_legacyLanguageKey),
    );
    final systemLanguage = _systemDefaultLanguage();

    if (profile == null) {
      _logResolution(
        reason: reason,
        source: 'system_default_logged_out',
        resolved: systemLanguage,
      );
      return systemLanguage;
    }

    if (profile.isGuest) {
      final resolved = guestLanguage ?? systemLanguage;
      _logResolution(
        reason: reason,
        source: guestLanguage != null ? 'guest_cache' : 'system_default_guest',
        resolved: resolved,
      );
      return resolved;
    }

    final profileLanguage =
        _normalizeOptionalLanguageCode(profile.targetLanguage);
    final resolved = profileLanguage ?? cachedProfileLanguage ?? systemLanguage;

    await preferences.setString(_profileLanguageKey, resolved);
    await preferences.remove(_legacyLanguageKey);

    _logResolution(
      reason: reason,
      source: profileLanguage != null
          ? 'profile'
          : cachedProfileLanguage != null
              ? 'profile_cache'
              : 'system_default_authenticated',
      resolved: resolved,
    );

    return resolved;
  }

  Future<UserProfile?> _readCurrentProfile() async {
    try {
      return await ref.read(authNotifierProvider.future);
    } catch (_) {
      return null;
    }
  }

  String _normalizeRequiredLanguageCode(String languageCode) {
    return _normalizeOptionalLanguageCode(languageCode) ?? 'en';
  }

  String? _normalizeOptionalLanguageCode(String? languageCode) {
    final normalized = languageCode?.toLowerCase().trim();
    if (normalized == null || normalized.isEmpty) {
      return null;
    }

    if (normalized == 'ja') {
      return 'ja';
    }

    if (normalized == 'en') {
      return 'en';
    }

    return null;
  }

  String _systemDefaultLanguage() {
    final systemCode =
        WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    return systemCode.toLowerCase().startsWith('ja') ? 'ja' : 'en';
  }

  void _logResolution({
    required String reason,
    required String source,
    required String resolved,
  }) {
    if (!kDebugMode) {
      return;
    }

    debugPrint(
      'AppPreferencesNotifier[$reason]: source=$source, resolved=$resolved, '
      'session=${_sessionLanguage ?? 'none'}',
    );
  }
}
