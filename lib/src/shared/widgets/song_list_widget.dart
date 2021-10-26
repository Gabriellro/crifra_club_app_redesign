import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/models.dart';

class SongListWidget extends StatelessWidget {
  final List<SongModel> songModels;

  const SongListWidget({Key? key, required this.songModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: songModels.length,
          itemBuilder: (BuildContext context, int index) {
            final SongModel songModel = songModels[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songModel.name,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          Visibility(
                            visible:
                                songModel.isExplicit == null ? false : true,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.explicit_rounded,
                                  size: 18,
                                  color: Color(0xFFF04747),
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                          ),
                          Text(
                            "${songModel.author.name}",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Visibility(
                            visible: songModel.feat?.name != null,
                            child: Text(
                              ", feat ${songModel.feat?.name ?? null}",
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert_rounded,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
