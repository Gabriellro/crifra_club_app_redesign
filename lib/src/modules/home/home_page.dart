import 'package:flutter/material.dart';

import '../../shared/models/_export_models.dart';
import '../../shared/theme/theme.dart';
import '../_export_modules.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      body: [
        ExplorePage(),
        ExplorePage(),
      ][controller.currentPage],
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
              icon: Icon(
                Icons.explore_rounded,
                color: controller.currentPage == 0
                    ? AppColors.primary
                    : Theme.of(context).iconTheme.color?.withOpacity(0.2),
              ),
            ),
            IconButton(
              onPressed: () {
                controller.setPage(1);
                setState(() {});
              },
              icon: Icon(
                Icons.library_music_rounded,
                color: controller.currentPage == 1
                    ? AppColors.primary
                    : Theme.of(context).iconTheme.color?.withOpacity(0.2),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(
                    context,
                    ProfilePage.routeName,
                    arguments: user,
                  );
                });
              },
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(user.photoURL!),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
