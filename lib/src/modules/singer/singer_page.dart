import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/data/data.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';

class SingerPage extends StatefulWidget {
  final SingerModel singer;
  SingerPage({Key? key, required this.singer}) : super(key: key);

  @override
  _SingerPageState createState() => _SingerPageState();
}

class _SingerPageState extends State<SingerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.primary,
              ),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Theme.of(context).cardColor,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_rounded,
                    color: AppColors.primary,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
                tooltip: 'Configurações',
                onPressed: () {},
              ),
            ],
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 134.0 - 40,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SingerPicWidget.medium(
                        pic: widget.singer.imageUrl,
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 145,
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            text: "${widget.singer.name} ",
                            children: <TextSpan>[
                              TextSpan(
                                text: "${String.fromCharCode(0xf026e)}",
                                style: TextStyle(
                                  fontFamily: 'MaterialIcons',
                                  fontSize: 18.0,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  InfoDataWidget(
                    data: '3.9M',
                    data1: '1.2k',
                    data2: '96',
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30),
                            Text(
                              "Mais acessadas",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(height: 15),
                            MostWantedWidget(
                              posicao: "1",
                              name: "Wake Me Up",
                              views: "1.180.150",
                              album:
                                  "https://upload.wikimedia.org/wikipedia/pt/0/01/Avicii_-_True.jpg",
                            ),
                            MostWantedWidget(
                              posicao: "2",
                              name: "Hey Brother",
                              views: "1.180.150",
                              album:
                                  "https://upload.wikimedia.org/wikipedia/pt/0/01/Avicii_-_True.jpg",
                            ),
                            MostWantedWidget(
                              posicao: "3",
                              name: "The Nights",
                              views: "1.180.150",
                              album:
                                  "https://upload.wikimedia.org/wikipedia/pt/e/ea/Avicii_Stories_Capa.jpg",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: 36,
                      child: FabButton(
                        icon: Icons.favorite_border_rounded,
                        label: "Virar Fã",
                        onTap: () => print("Fan Button"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Álbuns',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    AlbumList(
                      albumModels: albumModels,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
