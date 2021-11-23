import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme customTextThemeLight() {
  return TextTheme(
    headline1: GoogleFonts.quicksand(
      fontSize: 98,
      fontWeight: FontWeight.w700,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.quicksand(
      fontSize: 61,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.quicksand(
      fontSize: 49,
      fontWeight: FontWeight.w700,
    ),
    headline4: GoogleFonts.quicksand(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
      color: LightColors.textLigth,
    ),
    headline5: GoogleFonts.quicksand(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    headline6: GoogleFonts.quicksand(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.quicksand(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.quicksand(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.1,
      color: LightColors.textLigth.withOpacity(
        0.3,
      ),
    ),
    bodyText1: GoogleFonts.quicksand(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.quicksand(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
      color: LightColors.textLigth.withOpacity(
        0.3,
      ),
    ),
    button: GoogleFonts.quicksand(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.quicksand(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.4,
      color: LightColors.textLigth.withOpacity(
        0.3,
      ),
    ),
    overline: GoogleFonts.quicksand(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.5,
    ),
  );
}

TextTheme customTextThemeDark() {
  return TextTheme(
    headline1: GoogleFonts.quicksand(
      fontSize: 98,
      fontWeight: FontWeight.w700,
      letterSpacing: -1.5,
    ),
    headline2: GoogleFonts.quicksand(
      fontSize: 61,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
    ),
    headline3: GoogleFonts.quicksand(
      fontSize: 49,
      fontWeight: FontWeight.w700,
    ),
    headline4: GoogleFonts.quicksand(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
      color: DarkColors.textDark,
    ),
    headline5: GoogleFonts.quicksand(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    headline6: GoogleFonts.quicksand(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle1: GoogleFonts.quicksand(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
    ),
    subtitle2: GoogleFonts.quicksand(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.1,
      color: DarkColors.textDark.withOpacity(
        0.3,
      ),
    ),
    bodyText1: GoogleFonts.quicksand(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
    ),
    bodyText2: GoogleFonts.quicksand(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.25,
      color: DarkColors.textDark.withOpacity(
        0.3,
      ),
    ),
    button: GoogleFonts.quicksand(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.quicksand(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.4,
      color: DarkColors.textDark.withOpacity(
        0.3,
      ),
    ),
    overline: GoogleFonts.quicksand(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.5,
    ),
  );
}
