import 'package:crifra_club_app_redesign/src/shared/data/data.dart';
import 'package:flutter/material.dart';

import 'modules/album/album_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/profile/profile_page.dart';

import 'modules/settings/settings_page.dart';
import 'modules/singer/singer_page.dart';
import 'modules/splash/splash_page.dart';

import 'shared/models/user_model.dart';
import 'shared/theme/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      initialRoute: "/",
      routes: {
        "/": (_) => SplashPage(),
        "/Login": (_) => LoginPage(),
        "/Home": (context) => HomePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/Profile": (context) => ProfilePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/Singer": (_) => SingerPage(),
        "/Album": (_) => AlbumPage(
              albumModels: albumModels,
            ),
        "/settings": (context) => SettingsPage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
      },
    );
  }
}
