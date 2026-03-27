import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/presentation/notifiers/auth_notifier.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/screens/auth_screen.dart';
import '../../features/auth/presentation/screens/onboarding/language_selection_screen.dart';
import '../../features/auth/presentation/screens/onboarding/level_selection_screen.dart';
import '../../features/auth/presentation/screens/onboarding/goals_screen.dart';
import '../../features/lessons/presentation/screens/lesson_result_screen.dart';
import '../../features/lessons/presentation/screens/lesson_screen.dart';
import '../../features/lessons/presentation/screens/lessons_overview_screen.dart';
import '../../features/lessons/domain/models/lesson_progress.dart';

class _PlaceholderScreen extends StatelessWidget {
  final String title;
  const _PlaceholderScreen(this.title);
  @override
  Widget build(BuildContext context) => Scaffold(
      body: Center(child: Text(title, style: const TextStyle(fontSize: 24))));
}

@singleton
class AppRouter {
  GoRouter get router => _router;

  final _router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/auth', builder: (_, __) => const AuthScreen()),
      GoRoute(
          path: '/onboarding/language',
          builder: (_, __) => const LanguageSelectionScreen()),
      GoRoute(
          path: '/onboarding/level',
          builder: (_, __) => const LevelSelectionScreen()),
      GoRoute(
          path: '/onboarding/goals', builder: (_, __) => const GoalsScreen()),
      ShellRoute(
        builder: (context, state, child) => _ScaffoldWithNav(child: child),
        routes: [
          GoRoute(
              path: '/app/learn',
              builder: (_, __) => const LessonsOverviewScreen()),
          GoRoute(
              path: '/app/practice',
              builder: (_, __) => const _PlaceholderScreen('Practice')),
          GoRoute(
              path: '/app/stats',
              builder: (_, __) => const _PlaceholderScreen('Stats')),
          GoRoute(
              path: '/app/profile',
              builder: (_, __) => const _ProfileScreen()),
          GoRoute(
            path: '/app/lesson/:lessonId',
            builder: (_, state) => LessonScreen(
              lessonId: state.pathParameters['lessonId']!,
            ),
          ),
          GoRoute(
            path: '/app/lesson/:lessonId/result',
            builder: (_, state) => LessonResultScreen(
              summary: state.extra! as LessonSummary,
            ),
          ),
        ],
      ),
    ],
  );
}

class _ProfileScreen extends ConsumerWidget {
  const _ProfileScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: FilledButton.icon(
          onPressed: () async {
            final shouldSignOut = await showDialog<bool>(
              context: context,
              builder: (dialogContext) => AlertDialog(
                title: const Text('Sign out?'),
                content: const Text(
                  'You will return to the sign in screen.',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(dialogContext).pop(false),
                    child: const Text('Cancel'),
                  ),
                  FilledButton(
                    onPressed: () => Navigator.of(dialogContext).pop(true),
                    child: const Text('Sign Out'),
                  ),
                ],
              ),
            );

            if (shouldSignOut != true) return;

            await ref.read(authNotifierProvider.notifier).signOut();

            if (!context.mounted) return;
            context.go('/auth');
          },
          icon: const Icon(Icons.logout),
          label: const Text('Sign Out'),
        ),
      ),
    );
  }
}

class _ScaffoldWithNav extends StatelessWidget {
  final Widget child;
  const _ScaffoldWithNav({required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFFF2E8CF),
        indicatorColor: const Color(0xFF386641).withValues(alpha: 0.15),
        selectedIndex: _locationToIndex(location),
        onDestinationSelected: (i) => _indexToLocation(i, context),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.school_outlined),
              selectedIcon: Icon(Icons.school),
              label: 'Learn'),
          NavigationDestination(
              icon: Icon(Icons.style_outlined),
              selectedIcon: Icon(Icons.style),
              label: 'Practice'),
          NavigationDestination(
              icon: Icon(Icons.bar_chart_outlined),
              selectedIcon: Icon(Icons.bar_chart),
              label: 'Stats'),
          NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }

  int _locationToIndex(String loc) {
    if (loc.startsWith('/app/practice')) return 1;
    if (loc.startsWith('/app/stats')) return 2;
    if (loc.startsWith('/app/profile')) return 3;
    return 0;
  }

  void _indexToLocation(int i, BuildContext context) {
    switch (i) {
      case 0:
        context.go('/app/learn');
      case 1:
        context.go('/app/practice');
      case 2:
        context.go('/app/stats');
      case 3:
        context.go('/app/profile');
    }
  }
}
