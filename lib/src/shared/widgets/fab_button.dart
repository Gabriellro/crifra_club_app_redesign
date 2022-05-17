import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

class FabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? label;
  final IconData icon;
  final Color backgroundColor;
  const FabButton({
    Key? key,
    this.label = "",
    this.icon = Icons.add,
    required this.onTap,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: AppColors.primary),
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
      onPressed: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.white,
          ),
          const SizedBox(width: 12),
          Text(
            label!,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: AppColors.white),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
