import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:crifra_club_app_redesign/src/shared/auth/auth_controller.dart';
import 'package:crifra_club_app_redesign/src/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSingIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl,
      );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
