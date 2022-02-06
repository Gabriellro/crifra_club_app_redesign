import 'package:crifra_club_app_redesign/src/shared/utils/app_routes.dart';
import 'package:flutter/material.dart';

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
      routes: routes,
    );
  }
}
