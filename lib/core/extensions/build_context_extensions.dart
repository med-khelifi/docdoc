import 'package:doctorine/core/theme/extensions/onboarding_gradient_theme_extension.dart';
import 'package:doctorine/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension BuildContextExtensions on BuildContext {
  S get l10n => S.of(this);
  bool get isArabic => Intl.getCurrentLocale() == 'ar';
  TextTheme get textStyles => Theme.of(this).textTheme;
  IconThemeData get iconStyles => Theme.of(this).iconTheme;
  IconButtonThemeData get iconButtonStyles => Theme.of(this).iconButtonTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get onPrimary => colorScheme.onPrimary;
  Color get onSurface => colorScheme.onSurface;
  Color get onSurfaceVariant => colorScheme.onSurfaceVariant;

  LinearGradient get onboardingGradient =>
      Theme.of(this).extension<OnboardingGradientThemeExtension>()!.gradient;

  InputDecorationThemeData get inputFieldTheme =>
      Theme.of(this).inputDecorationTheme;
}
