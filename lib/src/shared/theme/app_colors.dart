import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFFF37A12);
  static const secondy = Color(0xFFFBD7B5);
  static const black = Color(0xFF121212);
  static const softblack = Color(0xFF1E1E1E);
  static const white = Color(0xFFFFFFFF);
  static const softwhite = Color(0xFFF8F6F7);
  static const textDark = Color(0xFF53585A);
  static const textLigth = Color(0xFFF5F5F5);
}

abstract class LightColors {
  static const background = AppColors.softwhite;
  static const card = AppColors.white;
  static const iconLight = AppColors.black;
}

abstract class DarkColors {
  static const background = AppColors.black;
  static const card = AppColors.softblack;
  static const iconDark = AppColors.white;
}
