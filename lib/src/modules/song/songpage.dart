import 'package:flutter/material.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:crifra_club_app_redesign/src/shared/data/data.dart';

import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/_export_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SongPage extends StatefulWidget {
  static String routeName = "/SongPage";

  final List<SongModel> songModel;

  const SongPage({Key? key, required this.songModel}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  bool _showFilterSettings = false;
  bool _showTextSize = false;
  bool _showAutoScrolling = false;

  RangeValues _rangeSliderDiscreteValues = const RangeValues(0, 0);

  @override
  Widget build(BuildContext context) {
    final _autoScrolling = Visibility(
      visible: _showAutoScrolling,
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            SvgPicture.asset(
              AppImages.icTurtle,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.2),
            ),
            RangeSlider(
              activeColor: Theme.of(context).primaryColor,
              inactiveColor: Theme.of(context).cardColor,
              values: _rangeSliderDiscreteValues,
              min: _rangeSliderDiscreteValues.end < 0 ? 0 : -2,
              max: _rangeSliderDiscreteValues.start > 0 ? 0 : 2,
              divisions: 4,
              onChanged: (values) {
                setState(() {
                  _rangeSliderDiscreteValues = values;
                });
              },
            ),
            SvgPicture.asset(
              AppImages.icRabbit,
              color: Theme.of(context).iconTheme.color!.withOpacity(0.2),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
      ),
    );
    final _textSize = Visibility(
      visible: _showTextSize,
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.title_rounded,
                color: Theme.of(context).iconTheme.color,
                size: 18,
              ),
            ),
            RangeSlider(
              activeColor: Theme.of(context).primaryColor,
              inactiveColor: Theme.of(context).cardColor,
              values: _rangeSliderDiscreteValues,
              min: _rangeSliderDiscreteValues.end < 0 ? 0 : -2,
              max: _rangeSliderDiscreteValues.start > 0 ? 0 : 2,
              divisions: 4,
              onChanged: (values) {
                setState(() {
                  _rangeSliderDiscreteValues = values;
                });
              },
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.title_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 86,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.primary,
          ),
        ),
        title: Text(
          widget.songModel.first.name,
          style: Theme.of(context).textTheme.headline6,
        ),
        flexibleSpace: FlexibleSpaceBar(
          title: Text(
            widget.songModel.first.author.name,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: AppColors.primary),
          ),
        ),
        actions: [
          IconButton(
            icon: _showFilterSettings == false
                ? Icon(Icons.filter_list_outlined)
                : Icon(Icons.close_rounded),
            color: _showFilterSettings == false
                ? Theme.of(context).iconTheme.color
                : Theme.of(context).errorColor,
            onPressed: () => setState(
              () {
                _showFilterSettings = !_showFilterSettings;
                _showAutoScrolling = false;
                _showTextSize = false;
              },
            ),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert_rounded),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.dry_rounded),
                  title: Text('Corrigir'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.print_rounded),
                  title: Text('imprimir'),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.offline_pin_rounded),
                  title: Text('Salvar offline'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: _showFilterSettings,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      child: SetSettingsWidget(
                          setSettingsModels: setSettingsModelscipher),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Personalizar atalhos",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(width: 20),
                        CircleAvatar(
                          backgroundColor: Theme.of(context).cardColor,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit_rounded,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:
                            Theme.of(context).iconTheme.color!.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 573,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Theme.of(context).cardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Theme.of(context).primaryColor,
      //   icon: Icon(
      //     Icons.ondemand_video_rounded,
      //     color: Theme.of(context).iconTheme.color,
      //   ),
      //   label: Text(
      //     "Vídeo aula",
      //     style: Theme.of(context).textTheme.button,
      //   ),
      //   onPressed: () {},
      // ),
      bottomNavigationBar: Container(
        height: _showAutoScrolling || _showTextSize == true ? 56 + 56 : 56,
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _autoScrolling,
            _textSize,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.headset_rounded,
                    color: Theme.of(context).iconTheme.color?.withOpacity(0.2),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.format_size,
                      color: _showTextSize == true
                          ? Theme.of(context).primaryColor
                          : Theme.of(context)
                              .iconTheme
                              .color!
                              .withOpacity(0.2)),
                  tooltip: 'Tamanho da letra',
                  onPressed: () => setState(
                    () {
                      _showFilterSettings = false;
                      _showAutoScrolling = false;
                      _showTextSize = !_showTextSize;
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.format_list_bulleted_rounded,
                    color: Theme.of(context).iconTheme.color?.withOpacity(0.2),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.unfold_more_rounded,
                    color: _showAutoScrolling == true
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color!.withOpacity(0.2),
                  ),
                  tooltip: 'Auto Rolagem',
                  onPressed: () => setState(
                    () {
                      _showFilterSettings = false;
                      _showAutoScrolling = !_showFilterSettings;
                      _showTextSize = false;
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
