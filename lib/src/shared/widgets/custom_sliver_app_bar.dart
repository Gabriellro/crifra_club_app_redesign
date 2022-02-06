import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: AppColors.primary,
            ),
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
