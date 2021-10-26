import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

class SetAlbumWidget extends StatelessWidget {
  final AlbumModel albumModel;

  const SetAlbumWidget({
    Key? key,
    required this.albumModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  child: Image.network(
                    albumModel.albumimageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  child: Text(
                    "${albumModel.name}",
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: "Álbum de ",
                              style: Theme.of(context).textTheme.caption),
                          TextSpan(
                            text: "${albumModel.author.name}",
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          ],
        ),
        InfoDataWidget(
          data: '3.9M',
          data1: '1.2k',
          data2: '96',
        ),
      ],
    );
  }
}
