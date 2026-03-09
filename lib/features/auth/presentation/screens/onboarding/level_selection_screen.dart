import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../notifiers/onboarding_notifier.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_typography.dart';
import '../../../../../core/theme/app_spacing.dart';
import '../../../../../core/theme/app_animations.dart';

const _levels = [
  {'code': 'A1', 'label': 'Beginner', 'desc': 'I know almost nothing'},
  {'code': 'A2', 'label': 'Elementary', 'desc': 'I know some basics'},
  {
    'code': 'B1',
    'label': 'Intermediate',
    'desc': 'I can hold simple conversations'
  },
  {'code': 'B2', 'label': 'Upper-Inter', 'desc': 'I\'m fairly comfortable'},
  {'code': 'C1', 'label': 'Advanced', 'desc': 'I speak with confidence'},
  {'code': 'C2', 'label': 'Mastery', 'desc': 'Near-native level'},
];

class LevelSelectionScreen extends ConsumerWidget {
  const LevelSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected =
        ref.watch(onboardingNotifierProvider.select((s) => s.cefrLevel));

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
              Text('What\'s your level?',
                  style: AppTypography.displayLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.sm),
              Text('We\'ll personalise your path',
                  style: AppTypography.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.lg),
              Expanded(
                child: ListView.separated(
                  itemCount: _levels.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (_, i) {
                    final lvl = _levels[i];
                    final isSelected = selected == lvl['code'];
                    return GestureDetector(
                      onTap: () => ref
                          .read(onboardingNotifierProvider.notifier)
                          .setCefrLevel(lvl['code']!),
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
                              child: Text(lvl['code']!,
                                  style: AppTypography.labelLarge.copyWith(
                                    color: isSelected
                                        ? AppColors.textOnPrimary
                                        : AppColors.textPrimary,
                                  )),
                            ),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(lvl['label']!,
                                    style: AppTypography.headlineMedium),
                                Text(lvl['desc']!,
                                    style: AppTypography.bodyMedium),
                              ]),
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
