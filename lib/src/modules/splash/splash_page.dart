import 'package:flutter/material.dart';
import 'package:crifra_club_app_redesign/src/shared/auth/auth_controller.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_images.dart';

class SplashPage extends StatelessWidget {
  static String routeName = "/";
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(child: Image.asset(AppImages.icon)),
    );
  }
}
