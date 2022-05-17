import 'package:flutter/material.dart';

import '../../shared/auth/auth_controller.dart';
import '../../shared/theme/theme.dart';

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
