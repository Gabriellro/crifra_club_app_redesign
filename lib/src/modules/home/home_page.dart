import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/models/user_model.dart';

import 'package:crifra_club_app_redesign/src/modules/explore/explore_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
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
                Icons.video_library_rounded,
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
                    "/Profile",
                    arguments: widget.user,
                  );
                });
              },
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(widget.user.photoURL!),
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
