import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../notifiers/auth_notifier.dart';
import '../../notifiers/onboarding_notifier.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_typography.dart';
import '../../../../../core/theme/app_spacing.dart';
import '../../../../../core/theme/app_animations.dart';

const _goals = [
  {'minutes': 5, 'label': 'Casual', 'desc': '5 min / day', 'emoji': '🌱'},
  {'minutes': 10, 'label': 'Regular', 'desc': '10 min / day', 'emoji': '🔥'},
  {'minutes': 15, 'label': 'Serious', 'desc': '15 min / day', 'emoji': '⚡'},
  {'minutes': 20, 'label': 'Intense', 'desc': '20 min / day', 'emoji': '🚀'},
];

class GoalsScreen extends ConsumerWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingNotifierProvider);
    final authAsync = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.go('/onboarding/level')),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Set your daily goal',
                  style: AppTypography.displayLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.sm),
              Text('Consistency beats intensity',
                  style: AppTypography.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.xl),
              ...(_goals.map((goal) {
                final mins = goal['minutes'] as int;
                final isSelected = state.dailyGoalMinutes == mins;
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                  child: GestureDetector(
                    onTap: () => ref
                        .read(onboardingNotifierProvider.notifier)
                        .setDailyGoal(mins),
                    child: AnimatedContainer(
                      duration: AppAnimations.fast,
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? const Color(0xFFE8F0E0) : Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.cardRadius),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.camel.withValues(alpha: 0.3),
                          width: isSelected ? 2.5 : 1,
                        ),
                      ),
                      child: Row(children: [
                        Text(goal['emoji'] as String,
                            style: const TextStyle(fontSize: 32)),
                        const SizedBox(width: AppSpacing.md),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(goal['label'] as String,
                                  style: AppTypography.headlineMedium),
                              Text(goal['desc'] as String,
                                  style: AppTypography.bodyMedium),
                            ]),
                        const Spacer(),
                        if (isSelected)
                          const Icon(Icons.check_circle,
                              color: AppColors.primary),
                      ]),
                    ),
                  ),
                );
              })),
              const Spacer(),
              SizedBox(
                height: AppDimensions.buttonHeight,
                child: ElevatedButton(
                  onPressed: authAsync.isLoading
                      ? null
                      : () async {
                          await ref
                              .read(authNotifierProvider.notifier)
                              .saveOnboarding(
                                targetLanguage: state.targetLanguage,
                                cefrLevel: state.cefrLevel,
                                dailyGoalMinutes: state.dailyGoalMinutes,
                              );
                          if (context.mounted) context.go('/app/learn');
                        },
                  child: authAsync.isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                              strokeWidth: 2, color: AppColors.textOnPrimary))
                      : Text('Start Learning 🎉',
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
