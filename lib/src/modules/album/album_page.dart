import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/data/data.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

class AlbumPage extends StatefulWidget {
  final AlbumModel albumModel;

  const AlbumPage({
    Key? key,
    required this.albumModel,
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
              child: SetAlbumWidget(
                albumModel: widget.albumModel,
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
