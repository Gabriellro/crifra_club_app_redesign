import 'package:flutter/material.dart';
import 'package:crifra_club_app_redesign/src/modules/_export_modules.dart';
import 'package:crifra_club_app_redesign/src/shared/data/data.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  LoginPage.routeName: (context) => LoginPage(),
  HomePage.routeName: (context) => HomePage(),
  ProfilePage.routeName: (context) => ProfilePage(),
  SingerPage.routeName: (context) => SingerPage(),
  AlbumPage.routeName: (context) => AlbumPage(),
  SettingsPage.routeName: (context) => SettingsPage(
      setSettingsModelsgeneral: setSettingsModelsGeneral,
      setSettingsModelscipher: setSettingsModelscipher),
  SongPage.routeName: (context) => SongPage(songModel: songModels),
  SearchPage.routeName: (context) => SearchPage(),
};
