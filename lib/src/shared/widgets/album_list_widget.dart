import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/models.dart';

class AlbumListWidget extends StatelessWidget {
  final List<AlbumModel> albumModels;

  const AlbumListWidget({
    Key? key,
    required this.albumModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: albumModels.length,
          itemBuilder: (BuildContext context, int index) {
            final AlbumModel albumModel = albumModels[index];
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  "/Album",
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          albumModel.albumimageUrl,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 100,
                      child: Text(
                        albumModel.name,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
