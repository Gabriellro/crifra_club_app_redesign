import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/_export_widgets.dart';

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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 16,
                    offset: Offset(0, 6),
                  ),
                ],
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
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Álbum de ",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          TextSpan(
                            text: "${albumModel.author.name}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
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
          infoModel: InfoModel.album(
            data: albumModel.infoModel.data,
            data1: albumModel.infoModel.data1,
            data2: albumModel.infoModel.data2,
          ),
        ),
      ],
    );
  }
}
