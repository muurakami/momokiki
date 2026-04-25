import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/screens/auth_screen.dart';
import '../../features/auth/presentation/screens/onboarding/language_selection_screen.dart';
import '../../features/auth/presentation/screens/onboarding/level_selection_screen.dart';
import '../../features/auth/presentation/screens/onboarding/goals_screen.dart';
import '../../features/lessons/presentation/screens/lesson_result_screen.dart';
import '../../features/lessons/presentation/screens/lesson_screen.dart';
import '../../features/lessons/presentation/screens/lessons_overview_screen.dart';
import '../../features/lessons/domain/models/lesson_progress.dart';
import '../../features/practice/presentation/screens/card_editor_screen.dart';
import '../../features/practice/presentation/screens/deck_detail_screen.dart';
import '../../features/practice/presentation/screens/deck_editor_screen.dart';
import '../../features/practice/presentation/screens/practice_home_screen.dart';
import '../../features/practice/presentation/screens/review_session_screen.dart';
import '../../features/roadmaps/presentation/screens/roadmaps_screen.dart';
import '../../features/settings/presentation/screens/profile_settings_screen.dart';

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
              builder: (_, __) => const PracticeHomeScreen()),
          GoRoute(
            path: '/app/practice/decks/new',
            builder: (_, __) => const DeckEditorScreen(),
          ),
          GoRoute(
            path: '/app/practice/decks/:deckId/edit',
            builder: (_, state) => DeckEditorScreen(
              deckId: state.pathParameters['deckId']!,
            ),
          ),
          GoRoute(
            path: '/app/practice/decks/:deckId',
            builder: (_, state) => DeckDetailScreen(
              deckId: state.pathParameters['deckId']!,
            ),
          ),
          GoRoute(
            path: '/app/practice/decks/:deckId/cards/new',
            builder: (_, state) => CardEditorScreen(
              deckId: state.pathParameters['deckId']!,
            ),
          ),
          GoRoute(
            path: '/app/practice/cards/:cardId/edit',
            builder: (_, state) => CardEditorScreen(
              deckId: state.uri.queryParameters['deckId'],
              cardId: state.pathParameters['cardId']!,
            ),
          ),
          GoRoute(
            path: '/app/practice/decks/:deckId/review',
            builder: (_, state) => ReviewSessionScreen(
              deckId: state.pathParameters['deckId']!,
            ),
          ),
          GoRoute(
              path: '/app/roadmaps',
              builder: (_, __) => const RoadmapsScreen()),
          GoRoute(
              path: '/app/stats',
              builder: (_, __) => const _PlaceholderScreen('Stats')),
          GoRoute(
              path: '/app/profile',
              builder: (_, __) => const ProfileSettingsScreen()),
          GoRoute(
            path: '/app/lesson/:lessonId',
            builder: (_, state) => LessonScreen(
              lessonId: state.pathParameters['lessonId']!,
            ),
          ),
          GoRoute(
            path: '/app/lesson/:lessonId/result',
            builder: (_, state) {
              final extra = state.extra;
              if (extra is LessonSummary) {
                return LessonResultScreen(summary: extra);
              }

              return const LessonsOverviewScreen();
            },
          ),
        ],
      ),
    ],
  );
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
              icon: Icon(Icons.map_outlined),
              selectedIcon: Icon(Icons.map),
              label: 'Roadmaps'),
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
    if (loc.startsWith('/app/roadmaps')) return 2;
    if (loc.startsWith('/app/stats')) return 3;
    if (loc.startsWith('/app/profile')) return 4;
    return 0;
  }

  void _indexToLocation(int i, BuildContext context) {
    switch (i) {
      case 0:
        context.go('/app/learn');
      case 1:
        context.go('/app/practice');
      case 2:
        context.go('/app/roadmaps');
      case 3:
        context.go('/app/stats');
      case 4:
        context.go('/app/profile');
    }
  }
}
