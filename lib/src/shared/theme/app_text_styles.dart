import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme customTextTheme() {
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
      color: DarkColors.textDarkH.withOpacity(
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

class TextStyles {
  static final headline1 = GoogleFonts.quicksand(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );
  static final headline2 = GoogleFonts.quicksand(
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  );
  static final headline3 = GoogleFonts.quicksand(
    fontSize: 48,
    fontWeight: FontWeight.w500,
  );
  static final headline4 = GoogleFonts.quicksand(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.25,
  );
  static final headline5 = GoogleFonts.quicksand(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static final headline6 = GoogleFonts.quicksand(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
  );
  static final subtitle1 = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
  );
  static final subtitle2 = GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );
  static final bodyText1 = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  );
  static final bodyText2 = GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.25,
  );
  static final button = GoogleFonts.quicksand(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.25,
  );
  static final caption = GoogleFonts.quicksand(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
  );
  static final overline = GoogleFonts.quicksand(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.5,
  );
}
