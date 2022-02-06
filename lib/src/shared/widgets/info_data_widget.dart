import 'package:crifra_club_app_redesign/src/shared/models/info_model.dart';
import 'package:flutter/material.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';

class InfoDataWidget extends StatelessWidget {
  final InfoModel infoModel;

  InfoDataWidget({
    Key? key,
    required this.infoModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    text: infoModel.data,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextSpan(
                    text: "\n ${infoModel.category}",
                    style: Theme.of(context).textTheme.bodyText2,
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
                    text: infoModel.data1,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextSpan(
                    text: '\n ${infoModel.category1}',
                    style: Theme.of(context).textTheme.bodyText2,
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
                    text: infoModel.data2,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextSpan(
                    text: '\n ${infoModel.category2}',
                    style: Theme.of(context).textTheme.bodyText2,
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
