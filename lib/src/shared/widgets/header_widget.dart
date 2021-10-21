import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';

class Header extends StatelessWidget {
  final String title;
  final TextStyle style;

  const Header({
    Key? key,
    required this.title,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: SizedBox(
        height: 46,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
            const Spacer(),
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
            const SizedBox(width: 15),
            Icon(
              Icons.notifications_none_rounded,
            )
          ],
        ),
      ),
    );
  }
}
