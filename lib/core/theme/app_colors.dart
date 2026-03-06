import 'package:flutter/material.dart';

abstract class AppColors {
  // PRIMARY
  static const primary    = Color(0xFF386641);  // Hunter Green ← CORRECT seedColor
  static const secondary  = Color(0xFF6A994E);  // Sage Green
  static const accent     = Color(0xFFA7C957);  // Yellow Green — fills only, NEVER text
  static const background = Color(0xFFF2E8CF);  // Champagne Mist

  // TEXT
  static const textPrimary   = Color(0xFF432818);  // Dark Coffee — 7.2:1 WCAG AAA
  static const textSecondary = Color(0xFF886B56);  // Camel muted
  static const textOnPrimary = Color(0xFFF2E8CF);  // on dark bg — 6.8:1 WCAG AA

  // SECONDARY PALETTE
  static const darkWine    = Color(0xFF6F1D1B);
  static const camel       = Color(0xFFBB9457);
  static const chocolate   = Color(0xFF99582A);
  static const gold        = Color(0xFFFFD100);
  static const orange      = Color(0xFFFB8B24);
  static const frozenLake  = Color(0xFF97DFFC);
  static const periwinkle  = Color(0xFF858AE3);

  // SEMANTIC
  static const success = Color(0xFF6A994E);
  static const error   = Color(0xFF6F1D1B);
  static const warning = Color(0xFFFB8B24);

  // GAMIFICATION
  static const xpGold  = Color(0xFFFFD100);
  static const streak  = Color(0xFFFB8B24);
  static const heart   = Color(0xFF6F1D1B);
  static const crystal = Color(0xFF858AE3);

  // LESSON BLOCK TYPES
  static const listeningColor = Color(0xFF97DFFC);
  static const speakingColor  = Color(0xFF858AE3);
  static const readingColor   = Color(0xFF6A994E);
  static const writingColor   = Color(0xFFBB9457);

  // DARK MODE
  static const backgroundDark = Color(0xFF1C2B1E);
}
