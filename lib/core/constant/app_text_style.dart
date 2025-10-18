
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {

  static const TextStyle textStyleBold32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: "Poppins",
    color: AppColors.black,
  );

  static const TextStyle textStyleRegular16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: "Poppins",
    color: AppColors.grey,
  );
  static const TextStyle textStyleMedium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins",
    color: AppColors.white,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.16,
    color: AppColors.textPrimary,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.22,
    color: AppColors.textPrimary,
  );

  // ============================================
  // Headline Styles (Large Text)
  // ============================================

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.25,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.29,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.33,
    color: AppColors.textPrimary,
  );

  // ============================================
  // Title Styles (Medium Text)
  // ============================================

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.27,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
    height: 1.33,
    color: AppColors.textPrimary,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    height: 1.43,
    color: AppColors.textPrimary,
  );

  // ============================================
  // Body Styles (Regular Text)
  // ============================================

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.5,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.43,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.33,
    color: AppColors.textSecondary,
  );

  // ============================================
  // Label Styles (Small Text)
  // ============================================

  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.43,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.33,
    color: AppColors.textSecondary,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.45,
    color: AppColors.textSecondary,
  );

  // ============================================
  // Custom App Specific Styles
  // ============================================

  // Onboarding Title
  static const TextStyle onboardingTitle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  // Onboarding Description
  static const TextStyle onboardingDescription = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.5,
    color: AppColors.textSecondary,
  );

  // Pet Name
  static const TextStyle petName = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  // Pet Card Name
  static const TextStyle petCardName = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  // Pet Info (Gender, Age, etc.)
  static const TextStyle petInfo = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  // Pet Price
  static const TextStyle petPrice = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.2,
    color: AppColors.primary,
  );

  // Distance
  static const TextStyle distance = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.3,
    color: AppColors.textSecondary,
  );

  // Button Text Large
  static const TextStyle buttonLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    height: 1.2,
    color: AppColors.white,
  );

  // Button Text Medium
  static const TextStyle buttonMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    height: 1.2,
    color: AppColors.white,
  );

  // Button Text Small
  static const TextStyle buttonSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    height: 1.2,
    color: AppColors.white,
  );

  // Category Chip
  static const TextStyle categoryChip = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  // Category Chip Selected
  static const TextStyle categoryChipSelected = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
    height: 1.2,
    color: AppColors.white,
  );

  // App Bar Title
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  // Section Header
  static const TextStyle sectionHeader = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  // Card Title
  static const TextStyle cardTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  // Card Subtitle
  static const TextStyle cardSubtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    height: 1.4,
    color: AppColors.textSecondary,
  );

  // Hint Text
  static const TextStyle hintText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.4,
    color: AppColors.textHint,
  );

  // Input Text
  static const TextStyle inputText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  // Error Text
  static const TextStyle errorText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    height: 1.4,
    color: AppColors.error,
  );

  // Success Text
  static const TextStyle successText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    height: 1.4,
    color: AppColors.success,
  );

  // Link Text
  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    height: 1.4,
    color: AppColors.primary,
    decoration: TextDecoration.underline,
  );

  // Badge Text
  static const TextStyle badgeText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
    height: 1.2,
    color: AppColors.white,
  );

  // Info Box Title
  static const TextStyle infoBoxTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.3,
    color: AppColors.textSecondary,
  );

  // Info Box Value
  static const TextStyle infoBoxValue = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  // Tab Text
  static const TextStyle tabText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
    height: 1.2,
    color: AppColors.textSecondary,
  );

  // Tab Text Selected
  static const TextStyle tabTextSelected = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.3,
    height: 1.2,
    color: AppColors.primary,
  );

  // Dialog Title
  static const TextStyle dialogTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.3,
    color: AppColors.textPrimary,
  );

  // Dialog Content
  static const TextStyle dialogContent = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.5,
    color: AppColors.textSecondary,
  );
}