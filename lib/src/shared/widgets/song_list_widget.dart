import 'package:crifra_club_app_redesign/src/modules/_export_modules.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';

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
          itemExtent: 64,
          itemBuilder: (BuildContext context, int index) {
            final SongModel songModel = songModels[index];
            return ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 24),
              onTap: () => Navigator.pushNamed(context, SongPage.routeName),
              title: Text(
                songModel.name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              subtitle: Row(
                children: [
                  Visibility(
                    visible: songModel.isExplicit == null ? false : true,
                    child: Row(
                      children: [
                        Icon(
                          Icons.explicit_rounded,
                          size: 18,
                          color: Theme.of(context).errorColor,
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  Text(
                    "${songModel.author.name}",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    ", feat ${songModel.feat.name}",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_vert_rounded,
                ),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
