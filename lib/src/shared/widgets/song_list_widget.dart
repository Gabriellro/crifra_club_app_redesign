import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/models.dart';

class SongListWidget extends StatelessWidget {
  final List<SongModel> songModels;

  const SongListWidget({
    Key? key,
    required this.songModels,
  }) : super(key: key);

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
                      Row(
                        children: [
                          Text(
                            songModel.name,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            "${songModel.feat}",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      Text(
                        songModel.author,
                        style: Theme.of(context).textTheme.caption,
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
