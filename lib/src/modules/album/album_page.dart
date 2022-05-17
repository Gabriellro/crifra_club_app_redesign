import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';
import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/data/data.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/_export_widgets.dart';

class AlbumPage extends StatefulWidget {
  static String routeName = "/AlbumPage";

  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  bool _onfavorite = false;
  @override
  Widget build(BuildContext context) {
    final albumModel = ModalRoute.of(context)!.settings.arguments as AlbumModel;

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
                    _onfavorite == false
                        ? Icons.favorite_border_rounded
                        : Icons.favorite_rounded,
                    color: _onfavorite == true
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color!.withOpacity(0.2)),
                tooltip: 'Favoritar',
                onPressed: () => setState(() => _onfavorite = !_onfavorite),
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
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 30),
            sliver: SliverToBoxAdapter(
              child: SetAlbumWidget(albumModel: albumModel),
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
                    height: 800,
                    child: SongListWidget(songModels: songModels),
                  ),
                  Positioned(
                    top: -20,
                    right: 36,
                    child: FabButton(
                      icon: Icons.shuffle_rounded,
                      label: "Aleatória",
                      onTap: () => print("Aleatória"),
                      backgroundColor: Theme.of(context).primaryColor,
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
