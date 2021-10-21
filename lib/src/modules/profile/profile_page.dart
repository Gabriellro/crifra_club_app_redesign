import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:crifra_club_app_redesign/src/shared/data/data.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  final UserModel user;
  ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[10];

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
              IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(
                      context,
                      "/settings",
                      arguments: widget.user,
                    );
                  });
                },
                icon: Icon(
                  Icons.tune_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
              )
            ],
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 134.0 - 40,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(3, 6), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              child: Image.network(
                                widget.user.photoURL!,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 110,
                              child: Text(
                                '\n${widget.user.name}',
                                overflow: TextOverflow.clip,
                                maxLines: 2,
                                style: TextStyles.headline4.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.verified_rounded,
                              size: 18,
                              color: Color(0XFF0195F7),
                            ),
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
                ),
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
                      width: double.infinity,
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
                              'Músicas mais tocadas este mês',
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
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: 36,
                      child: FabButton(
                        icon: Icons.edit_rounded,
                        label: "Editar",
                        onTap: () => print("Fan Button"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
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
                  AlbumListWidget(
                    albumModels: albumModels,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
