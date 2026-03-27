import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../notifiers/onboarding_notifier.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_typography.dart';
import '../../../../../core/theme/app_spacing.dart';
import '../../../../../core/theme/app_animations.dart';

class _LevelOption {
  final String code;
  final String badge;
  final String label;
  final String description;

  const _LevelOption({
    required this.code,
    required this.badge,
    required this.label,
    required this.description,
  });
}

const _englishLevels = [
  _LevelOption(
    code: 'A1',
    badge: 'A1',
    label: 'Beginner',
    description: 'I know almost nothing',
  ),
  _LevelOption(
    code: 'A2',
    badge: 'A2',
    label: 'Elementary',
    description: 'I know some basics',
  ),
  _LevelOption(
    code: 'B1',
    badge: 'B1',
    label: 'Intermediate',
    description: 'I can hold simple conversations',
  ),
  _LevelOption(
    code: 'B2',
    badge: 'B2',
    label: 'Upper-Inter',
    description: 'I\'m fairly comfortable',
  ),
  _LevelOption(
    code: 'C1',
    badge: 'C1',
    label: 'Advanced',
    description: 'I speak with confidence',
  ),
  _LevelOption(
    code: 'C2',
    badge: 'C2',
    label: 'Mastery',
    description: 'Near-native level',
  ),
];

const _japaneseLevels = [
  _LevelOption(
    code: 'jp_beginner',
    badge: 'N5',
    label: 'Beginner',
    description: 'Just starting',
  ),
  _LevelOption(
    code: 'jp_kana',
    badge: 'N5',
    label: 'Kana',
    description: 'Hiragana and katakana',
  ),
  _LevelOption(
    code: 'jp_basic_grammar',
    badge: 'N4',
    label: 'Basic Grammar',
    description: 'Simple grammar and sentences',
  ),
  _LevelOption(
    code: 'jp_conversational',
    badge: 'N3',
    label: 'Conversational',
    description: 'Daily conversations',
  ),
  _LevelOption(
    code: 'jp_advanced',
    badge: 'N2+',
    label: 'Advanced',
    description: 'Complex Japanese',
  ),
];

class LevelSelectionScreen extends ConsumerWidget {
  const LevelSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected =
        ref.watch(onboardingNotifierProvider.select((s) => s.cefrLevel));
    final targetLanguage = ref.watch(
      onboardingNotifierProvider.select((s) => s.targetLanguage),
    );
    final levels = targetLanguage == 'ja' ? _japaneseLevels : _englishLevels;
    final title = targetLanguage == 'ja'
        ? 'What\'s your Japanese level?'
        : 'What\'s your level?';
    final subtitle = targetLanguage == 'ja'
        ? 'We\'ll adapt the path to your Japanese background'
        : 'We\'ll personalise your path';

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading:
            BackButton(onPressed: () => context.go('/onboarding/language')),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title,
                  style: AppTypography.displayLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.sm),
              Text(subtitle,
                  style: AppTypography.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.lg),
              Expanded(
                child: ListView.separated(
                  itemCount: levels.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (_, i) {
                    final level = levels[i];
                    final isSelected = selected == level.code;
                    return GestureDetector(
                      onTap: () => ref
                          .read(onboardingNotifierProvider.notifier)
                          .setCefrLevel(level.code),
                      child: AnimatedContainer(
                        duration: AppAnimations.fast,
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.md,
                            vertical: AppSpacing.sm + 4),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFFE8F0E0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(
                              AppDimensions.answerCardRadius),
                          border: Border.all(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.camel.withValues(alpha: 0.3),
                            width: isSelected ? 2 : 1,
                          ),
                        ),
                        child: Row(children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.camel.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(level.badge,
                                  style: AppTypography.labelLarge.copyWith(
                                    color: isSelected
                                        ? AppColors.textOnPrimary
                                        : AppColors.textPrimary,
                                  )),
                            ),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  level.label,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTypography.headlineMedium,
                                ),
                                Text(
                                  level.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTypography.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          if (isSelected)
                            const Icon(Icons.check_circle,
                                color: AppColors.primary),
                        ]),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              SizedBox(
                height: AppDimensions.buttonHeight,
                child: ElevatedButton(
                  onPressed: () => context.go('/onboarding/goals'),
                  child: Text('Continue',
                      style: AppTypography.labelLarge
                          .copyWith(color: AppColors.textOnPrimary)),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
            ],
          ),
        ),
      ),
    );
  }
}
