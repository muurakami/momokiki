import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:momokiki/features/auth/domain/models/user_profile.dart';
import 'package:momokiki/features/auth/presentation/notifiers/auth_notifier.dart';
import 'package:momokiki/features/settings/presentation/notifiers/app_preferences_notifier.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AppPreferencesNotifier', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    test('guest session ignores stale profile cache and uses guest language',
        () async {
      SharedPreferences.setMockInitialValues({
        'preferred_language': 'ja',
        'profile_language': 'ja',
        'guest_language': 'en',
      });

      final container = _createContainer(_guestUser());
      addTearDown(container.dispose);

      final language =
          await container.read(appPreferencesNotifierProvider.future);

      expect(language, 'en');
    });

    test('authenticated session prefers profile language over cached value',
        () async {
      SharedPreferences.setMockInitialValues({
        'profile_language': 'ja',
        'guest_language': 'ja',
      });

      final container = _createContainer(
        _authenticatedUser(targetLanguage: 'en'),
      );
      addTearDown(container.dispose);

      final language =
          await container.read(appPreferencesNotifierProvider.future);
      final preferences = await SharedPreferences.getInstance();

      expect(language, 'en');
      expect(preferences.getString('profile_language'), 'en');
    });

    test('guest selection persists only guest language key', () async {
      final container = _createContainer(_guestUser());
      addTearDown(container.dispose);

      await container
          .read(appPreferencesNotifierProvider.notifier)
          .setPreferredLanguage('ja');

      final preferences = await SharedPreferences.getInstance();

      expect(preferences.getString('guest_language'), 'ja');
      expect(preferences.getString('profile_language'), isNull);
      expect(container.read(appPreferencesNotifierProvider).valueOrNull, 'ja');
    });

    test('logout reset clears profile caches and returns to system default',
        () async {
      SharedPreferences.setMockInitialValues({
        'preferred_language': 'ja',
        'profile_language': 'ja',
        'guest_language': 'en',
      });

      final container = _createContainer(
        _authenticatedUser(targetLanguage: 'ja'),
      );
      addTearDown(container.dispose);

      await container.read(appPreferencesNotifierProvider.future);

      final notifier = container.read(appPreferencesNotifierProvider.notifier);
      await notifier.resetToSystemLanguage();

      final preferences = await SharedPreferences.getInstance();

      expect(preferences.getString('preferred_language'), isNull);
      expect(preferences.getString('profile_language'), isNull);
      expect(
        container.read(appPreferencesNotifierProvider).valueOrNull,
        notifier.debugSystemDefaultLanguage,
      );
    });
  });
}

ProviderContainer _createContainer(UserProfile? user) {
  return ProviderContainer(
    overrides: [
      authNotifierProvider.overrideWith(() => _FakeAuthNotifier(user)),
    ],
  );
}

class _FakeAuthNotifier extends AuthNotifier {
  _FakeAuthNotifier(this._user);

  final UserProfile? _user;

  @override
  Future<UserProfile?> build() async => _user;
}

UserProfile _authenticatedUser({required String targetLanguage}) {
  return UserProfile(
    id: 'user-1',
    email: 'user@example.com',
    targetLanguage: targetLanguage,
    createdAt: DateTime(2025),
  );
}

UserProfile _guestUser() {
  return UserProfile(
    id: 'guest-user',
    isGuest: true,
    createdAt: DateTime(2025),
  );
}
