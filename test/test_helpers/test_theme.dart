import 'package:flutter/material.dart';

ThemeData buildTestTheme() {
  return ThemeData(
    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(fontSize: 14),
      labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      labelSmall: TextStyle(fontSize: 12),
    ),
  );
}
