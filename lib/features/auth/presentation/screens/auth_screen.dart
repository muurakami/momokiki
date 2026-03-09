import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../notifiers/auth_notifier.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/theme/app_spacing.dart';
import '../notifiers/auth_notifier.dart';
import '../../../../core/theme/app_spacing.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs;
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabs.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _nameCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authNotifierProvider, (_, next) {
      next?.whenData((user) { 
        if (user == null) return;
        if (user.xpTotal == 0) {
          context.go('/onboarding/language');
        } else {
          context.go('/app/learn');
        }
      });
    });

    final auth = ref.watch(authNotifierProvider);
    final isLoading = auth.isLoading;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md, vertical: AppSpacing.lg),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: AppSpacing.xl),
                // Logo
                Center(
                  child: Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text('🍑', style: TextStyle(fontSize: 44)),
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                Center(
                  child: Text('MOMOKIKI', style: AppTypography.displayMedium),
                ),
                Center(
                  child: Text('Learn Japanese & English',
                      style: AppTypography.bodyMedium),
                ),
                const SizedBox(height: AppSpacing.xl),

                // Tabs
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8DFC8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TabBar(
                    controller: _tabs,
                    indicator: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: AppColors.textOnPrimary,
                    unselectedLabelColor: AppColors.textSecondary,
                    labelStyle: AppTypography.labelLarge,
                    tabs: const [
                      Tab(text: 'Sign In'),
                      Tab(text: 'Sign Up'),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),

                // Sign In / Sign Up fields
                AnimatedBuilder(
                  animation: _tabs,
                  builder: (_, __) => Column(
                    children: [
                      if (_tabs.index == 1)
                        _buildField(
                            _nameCtrl, 'Display name', Icons.person_outline,
                            validator: (v) => (v?.trim().isEmpty ?? true)
                                ? 'Required'
                                : null),
                      _buildField(_emailCtrl, 'Email', Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          validator: (v) => (v?.contains('@') ?? false)
                              ? null
                              : 'Invalid email'),
                      _buildField(_passCtrl, 'Password', Icons.lock_outline,
                          obscure: _obscure,
                          suffix: IconButton(
                            icon: Icon(_obscure
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: () =>
                                setState(() => _obscure = !_obscure),
                          ),
                          validator: (v) => (v?.length ?? 0) >= 6
                              ? null
                              : 'Min 6 characters'),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.md),

                // Primary action button
                _MomoButton(
                  label: _tabs.index == 0 ? 'Sign In' : 'Create Account',
                  isLoading: isLoading,
                  onPressed: _handleEmailAuth,
                ),

                const SizedBox(height: AppSpacing.md),

                // Divider
                Row(children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
                    child: Text('or', style: AppTypography.bodyMedium),
                  ),
                  const Expanded(child: Divider()),
                ]),

                const SizedBox(height: AppSpacing.md),

                // Google
                _OutlineButton(
                  label: 'Continue with Google',
                  icon: '🌐',
                  isLoading: isLoading,
                  onPressed: () => ref
                      .read(authNotifierProvider.notifier)
                      .signInWithGoogle(),
                ),

                const SizedBox(height: AppSpacing.sm),

                // Guest
                TextButton(
                  onPressed: isLoading
                      ? null
                      : () => ref
                          .read(authNotifierProvider.notifier)
                          .signInAsGuest(),
                  child: Text('Continue as Guest',
                      style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.primary,
                          decoration: TextDecoration.underline)),
                ),

                if (auth.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: AppSpacing.md),
                    child: Text(
                      auth.error.toString(),
                      style: AppTypography.bodyMedium
                          .copyWith(color: AppColors.error),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    TextEditingController ctrl,
    String hint,
    IconData icon, {
    bool obscure = false,
    Widget? suffix,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: TextFormField(
        controller: ctrl,
        obscureText: obscure,
        keyboardType: keyboardType,
        validator: validator,
        style: AppTypography.bodyLarge,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTypography.bodyMedium,
          prefixIcon: Icon(icon, color: AppColors.textSecondary),
          suffixIcon: suffix,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimensions.answerCardRadius),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimensions.answerCardRadius),
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimensions.answerCardRadius),
            borderSide: const BorderSide(color: AppColors.error, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimensions.answerCardRadius),
            borderSide: const BorderSide(color: AppColors.error, width: 2),
          ),
        ),
      ),
    );
  }

  void _handleEmailAuth() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final notifier = ref.read(authNotifierProvider.notifier);
    if (_tabs.index == 0) {
      notifier.signInWithEmail(_emailCtrl.text.trim(), _passCtrl.text);
    } else {
      notifier.signUpWithEmail(
          _emailCtrl.text.trim(), _passCtrl.text, _nameCtrl.text.trim());
    }
  }
}

// Local button widgets (reusable here before core/widgets is wired)
class _MomoButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;

  const _MomoButton({
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.buttonHeight,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                    strokeWidth: 2, color: AppColors.textOnPrimary),
              )
            : Text(label,
                style: AppTypography.labelLarge
                    .copyWith(color: AppColors.textOnPrimary)),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback onPressed;
  final bool isLoading;

  const _OutlineButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.buttonHeight,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.camel, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.buttonRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(icon, style: const TextStyle(fontSize: 20)),
            const SizedBox(width: AppSpacing.sm),
            Text(label,
                style: AppTypography.labelLarge
                    .copyWith(color: AppColors.textPrimary)),
          ],
        ),
      ),
    );
  }
}
