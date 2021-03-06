import 'package:flutter/material.dart';

import '../../shared/data/data.dart';
import '../../shared/models/_export_models.dart';
import '../../shared/theme/theme.dart';
import '../../shared/widgets/_export_widgets.dart';

class SingerPage extends StatefulWidget {
  static String routeName = "/SingerPage";
  @override
  _SingerPageState createState() => _SingerPageState();
}

class _SingerPageState extends State<SingerPage> {
  bool _turnFan = false;
  @override
  Widget build(BuildContext context) {
    final singer = ModalRoute.of(context)!.settings.arguments as SingerModel;

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
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SingerPicWidget.medium(
                        pic: singer.imageUrl,
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 145,
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            text: "${singer.name} ",
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
                    infoModel: InfoModel.singer(
                      data: singer.info.data,
                      data1: singer.info.data1,
                      data2: singer.info.data2,
                    ),
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
                        icon: _turnFan == false
                            ? Icons.favorite_border_rounded
                            : Icons.favorite_rounded,
                        label: _turnFan == false ? "Virar Fã" : "Deixar Fã",
                        backgroundColor: _turnFan == false
                            ? Theme.of(context).primaryColor.withOpacity(0.5)
                            : Theme.of(context).primaryColor,
                        onTap: () => setState(() => _turnFan = !_turnFan),
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
