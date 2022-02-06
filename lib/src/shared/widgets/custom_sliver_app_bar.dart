import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/modules/_export_modules.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String title;

  const CustomSliverAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      titleSpacing: 24,
      title: Text('$title',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: AppColors.primary, fontWeight: FontWeight.w600)),
      backgroundColor: Theme.of(context).backgroundColor,
      actions: [
        CircleAvatar(
          backgroundColor: Theme.of(context).cardColor,
          child: IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: AppColors.primary,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(SearchPage.routeName);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Theme.of(context).iconTheme.color?.withOpacity(0.2),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
