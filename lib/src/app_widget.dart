import 'package:flutter/material.dart';

import 'modules/modules.dart';
import 'shared/data/data.dart';
import 'shared/models/models.dart';
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
        "/Singer": (context) => SingerPage(
              singer: ModalRoute.of(context)!.settings.arguments as SingerModel,
            ),
        "/Album": (context) => AlbumPage(
              albumModel:
                  ModalRoute.of(context)!.settings.arguments as AlbumModel,
            ),
        "/settings": (context) => SettingsPage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
              setSettingsModel: setSettingsModels,
            ),
      },
    );
  }
}
