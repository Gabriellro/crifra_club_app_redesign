import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

export 'app_colors.dart';
export 'app_images.dart';
export 'app_svg.dart';
export 'app_text_styles.dart';

/// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = AppColors.primary;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
        brightness: Brightness.light,
        visualDensity: visualDensity,
        textTheme: GoogleFonts.quicksandTextTheme().apply(
          fontFamily: "Quicksand",
          bodyColor: AppColors.black,
          displayColor: AppColors.black.withOpacity(0.6),
        ),
        primaryColor: AppColors.primary,
        backgroundColor: LightColors.background,
        scaffoldBackgroundColor: LightColors.background,
        cardColor: LightColors.card,
        iconTheme: const IconThemeData(color: LightColors.iconLight),
      );

  /// Dark theme and its settings.
  static ThemeData dark() => ThemeData(
        brightness: Brightness.dark,
        visualDensity: visualDensity,
        textTheme: GoogleFonts.quicksandTextTheme().apply(
          fontFamily: "Quicksand",
          bodyColor: AppColors.white,
          displayColor: AppColors.white.withOpacity(0.6),
        ),
        primaryColor: AppColors.primary,
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textDark),
          caption: TextStyle(color: AppColors.primary),
        ),
        backgroundColor: DarkColors.background,
        scaffoldBackgroundColor: DarkColors.background,
        cardColor: DarkColors.card,
        iconTheme: const IconThemeData(color: DarkColors.iconDark),
      );
}
