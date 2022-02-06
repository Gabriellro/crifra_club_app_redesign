import 'package:crifra_club_app_redesign/src/modules/home/home_page.dart';
import 'package:crifra_club_app_redesign/src/modules/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:crifra_club_app_redesign/src/shared/models/user_model.dart';

class AuthController {
  UserModel? _user;

  get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      saveUser(user);
      _user = user;
      Navigator.pushReplacementNamed(
        context,
        HomePage.routeName,
        arguments: user,
      );
    } else {
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    }
  }

  Future<void> saveUser(UserModel? user) async {
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user!.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 2));
    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}
