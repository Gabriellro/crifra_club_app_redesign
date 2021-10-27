import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFFF37A12);
  static const white = Color(0xFFFFFFFF);
  static const softwhite = Color(0xFFF8F6F7);
  static const black = Color(0xFF121212);
  static const softblack = Color(0xFF212121);
}

abstract class LightColors {
  static const background = AppColors.softwhite;
  static const card = AppColors.white;
  static const textLigth = AppColors.black;
  static const iconLight = AppColors.black;
}

abstract class DarkColors {
  static const background = AppColors.black;
  static const card = AppColors.softblack;
  static const textDark = AppColors.white;
  static const iconDark = AppColors.white;
}
