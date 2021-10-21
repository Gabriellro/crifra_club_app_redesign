import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/data/data.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

class AlbumPage extends StatefulWidget {
  final List<AlbumModel> albumModels;

  AlbumPage({
    Key? key,
    required this.albumModels,
  }) : super(key: key);

  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
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
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: Theme.of(context).iconTheme.color!.withOpacity(0.2),
                ),
                tooltip: 'Favoritar',
                onPressed: () => print("Favoritei"),
              ),
              IconButton(
                icon: Icon(
                  Icons.download_for_offline_rounded,
                  color: Theme.of(context).iconTheme.color!.withOpacity(0.2),
                ),
                tooltip: 'Download',
                onPressed: () => print("Download"),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
                tooltip: 'Configurações',
                onPressed: () => print("Configurações"),
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
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 200,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final AlbumModel albumModel = albumModels[index];
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 6,
                                      offset: Offset(
                                        3,
                                        6,
                                      ),
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
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\n${albumModel.name}",
                                      style: TextStyles.headline4,
                                    ),
                                    TextSpan(
                                      text: "\nÁlbum de ",
                                      style: TextStyles.caption,
                                    ),
                                    TextSpan(
                                      text: "${albumModel.author}",
                                      style: TextStyles.caption.copyWith(
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ],
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
                      );
                    }),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    width: double.infinity,
                    height: 600,
                  ),
                  SongListWidget(
                    songModels: songModels,
                  ),
                  Positioned(
                    top: -20,
                    right: 36,
                    child: FabButton(
                      icon: Icons.shuffle_rounded,
                      label: "Aleatória",
                      onTap: () => print("Aleatória"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
