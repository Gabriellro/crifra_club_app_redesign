import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

class FabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String? label;
  final IconData icon;
  const FabButton({
    Key? key,
    required this.onTap,
    this.label = "",
    this.icon = Icons.add,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(width: 2, color: AppColors.primary),
        backgroundColor: AppColors.primary,
      ),
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
