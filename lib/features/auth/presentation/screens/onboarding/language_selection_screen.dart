import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../notifiers/onboarding_notifier.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_typography.dart';
import '../../../../../core/theme/app_spacing.dart';
import '../../../../../core/theme/app_animations.dart';

const _languages = [
  {'code': 'ja', 'label': 'Japanese', 'emoji': '🇯🇵', 'native': '日本語'},
  {'code': 'en', 'label': 'English', 'emoji': '🇬🇧', 'native': 'English'},
];

class LanguageSelectionScreen extends ConsumerWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected =
        ref.watch(onboardingNotifierProvider.select((s) => s.targetLanguage));

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSpacing.xl),
              Text('What do you want\nto learn?',
                  style: AppTypography.displayLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.sm),
              Text('You can add more languages later',
                  style: AppTypography.bodyMedium, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.xxl),
              ..._languages.map((lang) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: _LanguageCard(
                      emoji: lang['emoji']!,
                      label: lang['label']!,
                      native: lang['native']!,
                      selected: selected == lang['code'],
                      onTap: () => ref
                          .read(onboardingNotifierProvider.notifier)
                          .setLanguage(lang['code']!),
                    ),
                  )),
              const Spacer(),
              SizedBox(
                height: AppDimensions.buttonHeight,
                child: ElevatedButton(
                  onPressed: () => context.go('/onboarding/level'),
                  child: Text('Continue',
                      style: AppTypography.labelLarge
                          .copyWith(color: AppColors.textOnPrimary)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageCard extends StatelessWidget {
  final String emoji, label, native;
  final bool selected;
  final VoidCallback onTap;

  const _LanguageCard({
    required this.emoji,
    required this.label,
    required this.native,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: AppAnimations.fast,
        padding: const EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFFE8F0E0) : Colors.white,
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
          border: Border.all(
            color: selected
                ? AppColors.primary
                : AppColors.camel.withValues(alpha: 0.4),
            width: selected ? 2.5 : 1,
          ),
        ),
        child: Row(children: [
          Text(emoji, style: const TextStyle(fontSize: 36)),
          const SizedBox(width: AppSpacing.md),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(label, style: AppTypography.headlineMedium),
            Text(native, style: AppTypography.bodyMedium),
          ]),
          const Spacer(),
          if (selected)
            const Icon(Icons.check_circle, color: AppColors.primary, size: 28),
        ]),
      ),
    );
  }
}
