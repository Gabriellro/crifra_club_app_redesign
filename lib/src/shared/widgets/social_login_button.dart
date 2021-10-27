import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_svg.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({
    Key? key,
    required this.size,
    required this.onTap,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.primary,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    AppSvg.google__G__Logo,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
