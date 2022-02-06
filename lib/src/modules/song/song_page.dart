import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
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
  bool _showTypeCipher = true;
  double _lyricssize = 516.0;

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
            SvgPicture.asset(
              AppImages.icTurtle,
              color: _rangeSliderDiscreteValues.start == -2
                  ? Theme.of(context).primaryColor
                  : _rangeSliderDiscreteValues.start == -1
                      ? Theme.of(context).primaryColor.withOpacity(0.5)
                      : Theme.of(context).iconTheme.color!.withOpacity(0.2),
            ),
            RangeSlider(
              activeColor: Theme.of(context).primaryColor,
              inactiveColor: Theme.of(context).cardColor,
              values: _rangeSliderDiscreteValues.start < 0
                  ? RangeValues(_rangeSliderDiscreteValues.start, 0)
                  : RangeValues(0, _rangeSliderDiscreteValues.end),
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
              color: _rangeSliderDiscreteValues.end == 2
                  ? Theme.of(context).primaryColor
                  : _rangeSliderDiscreteValues.end == 1
                      ? Theme.of(context).primaryColor.withOpacity(0.5)
                      : Theme.of(context).iconTheme.color!.withOpacity(0.2),
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
              values: _rangeSliderDiscreteValues.start < 0
                  ? RangeValues(_rangeSliderDiscreteValues.start, 0)
                  : RangeValues(0, _rangeSliderDiscreteValues.end),
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
    final _filterSettings = Visibility(
      visible: _showFilterSettings,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              height: 400,
              child:
                  SetSettingsWidget(setSettingsModels: setSettingsModelscipher),
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
                color: Theme.of(context).iconTheme.color!.withOpacity(0.2),
              ),
            ),
            SizedBox(height: 12),
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
                _showFilterSettings == true
                    ? _lyricssize = 516 - 470
                    : _lyricssize = 516;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _filterSettings,
          Visibility(
            visible: _showTypeCipher,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ChoiceChip(
                    label: Text('Principal'),
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                    selected: true,
                    selectedColor: Theme.of(context).primaryColor,
                    disabledColor: Theme.of(context).cardColor,
                  ),
                  ChoiceChip(
                    label: Text('Simplificada'),
                    selected: false,
                    disabledColor: Theme.of(context).cardColor,
                  ),
                  ActionChip(
                    avatar: Icon(Icons.keyboard_arrow_down_rounded),
                    label: Text('mais'),
                    onPressed: () {},
                    backgroundColor: Theme.of(context).cardColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: _lyricssize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Theme.of(context).cardColor,
            ),
            child: SingleChildScrollView(
              physics: _showFilterSettings == true
                  ? NeverScrollableScrollPhysics()
                  : BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tom: Bm (forma dos acordes no tom de Am)\n",
                    ),
                    Text(
                      "Capotraste na 2ª casa\n",
                    ),
                    Text(
                      "[Intro] Am  F/C  C/G  G\n            Am  F/C  C/G  Em7\n",
                    ),
                    Text(
                      "[Primeira Parte]\n",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "Am            F/C             C/G\nFeeling my way through the darkness\nAm        F/C          C/G\n  Guided by a beating heart\nAm         F/C            C/G\n  I can't tell where the journey will end\nAm        F/C           C/G\n  But I know where it start\nAm             F/C      C/G\n  They tell me I'm too young to understand\nAm              F/C             C/G\n  They say I'm caught up in a dream\nAm                F/C          \n  Well life will pass me by \n   C/G\nIf I don't open up my eyes\nAm             F/C     C/G\n  Well that's fine by me\n",
                    ),
                    Text(
                      "[Refrão]\n",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "\n           Am      F/C      C/G\nSo wake me up when it's all over\n  G       Am   F/C     C/G\nWhen I'm wiser and I'm older\nEm7       Am         F/C       C/G        G\nAll this time I was finding myself, and I\nAm        F/C        C/G  \n  Didn't know I was lost\n    Em7    Am      F/C      C/G\nSo wake me up when it's all over\n  G       Am   F/C     C/G\nWhen I'm wiser and I'm older\nEm7       Am         F/C       C/G        G\nAll this time I was finding myself, and I\nAm        F/C        C/G  Em7\n  Didn't know I was lost\n",
                    ),
                    Text(
                      "[Solo]\n",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Text(
                      "Am  F/C  C/G  G\nAm  F/C  C/G  Em7\nAm  F/C  C/G  G\nAm  F/C  C/G  Em7\nAm  F/C  C/G  G\nAm  F/C  C/G  Em7\nAm  F/C  C/G  G\nAm  F/C  C/G  Em7\n",
                    ),
                    Text(
                      "(Repetições)\n",
                    ),
                    Text(
                      "Am         F/C          C/G\n  I tried carrying the weight of the world\nAm      F/C         C/G\n  But I only have two hands\nAm        F/C                C/G\n  Hope I get the chance to travel the world\nAm             F/C       C/G\n  But I don't have any plans\nAm            F/C             C/G\n  I wish that I could stay forever this young\nAm       F/C           C/G\n  Not afraid to close my eyes\nAm          F/C          C/G\n  Life's a game made for everyone\nAm     F/C             C/G\n  And love is the prize\n",
                    ),
                    Text(
                      "[Refrão]\n",
                    ),
                    Text(
                      "           Am      F/C      C/G\nSo wake me up when it's all over\n  G       Am   F/C     C/G\nWhen I'm wiser and I'm older\nEm7       Am         F/C       C/G        G\nAll this time I was finding myself, and I\nAm        F/C        C/G  \n  Didn't know I was lost\n    Em7    Am      F/C      C/G\nSo wake me up when it's all over\n  G       Am   F/C     C/G\nWhen I'm wiser and I'm older\nEm7       Am         F/C       C/G        G\nAll this time I was finding myself, and I\nAm        F/C        C/G  Em7\n  Didn't know I was lost\nAm           F/C       C/G  G\n  I didn't know I was lost\nAm           F/C       C/G  Em7\n  I didn't know I was lost\nAm           F/C       C/G   G\n  I didn't know I was lost\nAm           F/C  C/G  Em7\n  I didn't know\n",
                    ),
                    Text(
                      "[Solo] Am  F/C  C/G  G\n           Am  F/C  C/G  Em\n           Am  F/C  C/G  G\n           Am  F/C  C/G  Em7  Am",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        icon: Icon(
          Icons.ondemand_video_rounded,
          color: Theme.of(context).primaryIconTheme.color,
        ),
        label: Text(
          "Vídeo aula",
          style: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: AppColors.white),
        ),
        onPressed: () {},
      ),
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
                      _showTextSize == true
                          ? _lyricssize = 516 - 56
                          : _lyricssize = 516;
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
                      _showAutoScrolling = !_showAutoScrolling;
                      _showTextSize = false;
                      _showAutoScrolling == true
                          ? _lyricssize = 516 - 56
                          : _lyricssize = 516;
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
