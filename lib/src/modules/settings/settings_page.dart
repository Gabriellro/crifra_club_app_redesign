import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/data/data.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';
import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

class SettingsPage extends StatefulWidget {
  final UserModel user;
  final List<SetSettingsModel> setSettingsModelsgeneral;
  final List<SetSettingsModel> setSettingsModelscipher;
  SettingsPage({
    Key? key,
    required this.user,
    required this.setSettingsModelsgeneral,
    required this.setSettingsModelscipher,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            title: Text("Settings"),
            titleTextStyle: Theme.of(context).textTheme.headline6,
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: Text(
                                '${widget.user.name}',
                                overflow: TextOverflow.clip,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Text(
                              'Editar detalhes pessoais',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Configurações gerais',
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SetSettingsWidget(
                        setSettingsModels: setSettingsModelsgeneral),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cifras',
                    overflow: TextOverflow.clip,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: SetSettingsWidget(
                            setSettingsModels: setSettingsModelscipher,
                          ),
                        ),
                      ],
                    ),
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
