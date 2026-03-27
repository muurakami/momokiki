import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:momokiki/features/lessons/presentation/screens/lessons_overview_screen.dart';
import 'package:momokiki/features/roadmaps/presentation/screens/roadmaps_screen.dart';

void main() {
  testWidgets('roadmap screen opens from lessons CTA and main route', (tester) async {
    final router = GoRouter(
      initialLocation: '/app/learn',
      routes: [
        GoRoute(path: '/app/learn', builder: (_, __) => const LessonsOverviewScreen()),
        GoRoute(path: '/app/roadmaps', builder: (_, __) => const RoadmapsScreen()),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp.router(routerConfig: router),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Lessons'), findsOneWidget);
    await tester.tap(find.text('Roadmap'));
    await tester.pumpAndSettle();

    expect(find.text('Roadmaps'), findsOneWidget);
  });
}
