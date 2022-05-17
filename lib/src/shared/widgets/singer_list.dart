import 'package:crifra_club_app_redesign/src/modules/_export_modules.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/_export_widgets.dart';

class SingerList extends StatelessWidget {
  final List<SingerModel> singers;

  const SingerList({Key? key, required this.singers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
      child: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: singers.length,
          itemBuilder: (BuildContext context, int index) {
            final SingerModel singerModel = singers[index];
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  SingerPage.routeName,
                  arguments: singers[index],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingerPicWidget.large(pic: singerModel.imageUrl),
                    SizedBox(height: 5),
                    Container(
                      width: 100,
                      child: Text(
                        singerModel.name,
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
