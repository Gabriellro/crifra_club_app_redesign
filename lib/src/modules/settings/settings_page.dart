import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/models/models.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';

// import 'package:crifra_club_app_redesign/src/shared/data/data.dart';
// import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

class SettingsPage extends StatefulWidget {
  final UserModel user;
  SettingsPage({Key? key, required this.user}) : super(key: key);

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
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        SetSettingsWidget(
                          isIcon: true,
                          icon: Icons.notifications_rounded,
                          label: 'Notificações',
                        ),
                        SetSettingsWidget(
                          isIcon: true,
                          icon: Icons.nights_stay_rounded,
                          label: 'Tema escuro',
                          isSwitch: true,
                        ),
                      ],
                    ),
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
                    'Configurações gerais',
                    overflow: TextOverflow.clip,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        SetSettingsWidget.cipher(
                          label: 'Instrumento',
                          sublabel: 'Violão/Guitarra',
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

class SetSettingsWidget extends StatefulWidget {
  final bool? isIcon;
  final IconData? icon;
  final String label;
  final bool? isSublabel;
  final String? sublabel;
  final bool? isSwitch;

  const SetSettingsWidget({
    Key? key,
    this.isSwitch = false,
    this.icon = Icons.add,
    required this.label,
    this.isIcon = false,
    this.isSublabel = false,
    this.sublabel = "",
  }) : super(key: key);

  const SetSettingsWidget.cipher({
    Key? key,
    this.isSwitch = false,
    this.icon = Icons.add,
    required this.label,
    this.isIcon = false,
    this.isSublabel = true,
    required this.sublabel,
  }) : super(key: key);

  @override
  State<SetSettingsWidget> createState() => _SetSettingsWidgetState();
}

class _SetSettingsWidgetState extends State<SetSettingsWidget> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return GestureDetector(
      onTap: () => setState(() => isSwitched = !isSwitched),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: widget.isIcon!,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).cardColor,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  widget.icon!,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Text(
            widget.label,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Spacer(),
          widget.isSublabel!
              ? Text(
                  widget.sublabel!,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                )
              : widget.isSwitch!
                  ? Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Theme.of(context).primaryColor,
                      activeColor: Theme.of(context).primaryColor,
                    )
                  : Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Theme.of(context).iconTheme.color,
                    )
        ],
      ),
    );
  }
}
