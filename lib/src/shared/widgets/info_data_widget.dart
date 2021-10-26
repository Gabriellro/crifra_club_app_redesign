import 'package:flutter/material.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';

class InfoDataWidget extends StatelessWidget {
  InfoDataWidget({
    Key? key,
    required this.data,
    required this.data1,
    required this.data2,
    this.isUser = false,
  }) : super(key: key);

  final String data, data1, data2;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    if (isUser != true) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: '\nExibições',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: AppColors.primary,
              ),
              width: 3,
              height: 41,
            ),
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data1,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: '\nFã-clube',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: AppColors.primary,
              ),
              width: 3,
              height: 41,
            ),
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data2,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: '\nMusicas',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: '\nExibições',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: AppColors.primary,
              ),
              width: 3,
              height: 41,
            ),
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data1,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: '\nFã-clube',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: AppColors.primary,
              ),
              width: 3,
              height: 41,
            ),
            Container(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: data2,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: '\nMusicas',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
