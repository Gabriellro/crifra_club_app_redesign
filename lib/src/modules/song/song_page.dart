import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/data/data.dart';
import '../../shared/models/_export_models.dart';
import '../../shared/theme/theme.dart';
import '../../shared/widgets/_export_widgets.dart';

class SongPage extends StatefulWidget {
  static String routeName = "/SongPage";
  SongPage({Key? key}) : super(key: key);

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
    final songModel = ModalRoute.of(context)!.settings.arguments as SongModel;

    final _autoScrolling = Visibility(
      visible: _showAutoScrolling,
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                AppImages.icTurtle,
                color: _rangeSliderDiscreteValues.start == -2
                    ? Theme.of(context).primaryColor
                    : _rangeSliderDiscreteValues.start == -1
                        ? Theme.of(context).primaryColor.withOpacity(0.5)
                        : Theme.of(context).iconTheme.color!.withOpacity(0.2),
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
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                AppImages.icRabbit,
                color: _rangeSliderDiscreteValues.end == 2
                    ? Theme.of(context).primaryColor
                    : _rangeSliderDiscreteValues.end == 1
                        ? Theme.of(context).primaryColor.withOpacity(0.5)
                        : Theme.of(context).iconTheme.color!.withOpacity(0.2),
              ),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
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
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              songModel.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            Row(
              children: [
                Visibility(
                  visible: songModel.isExplicit == null ? false : true,
                  child: Row(
                    children: [
                      Icon(
                        Icons.explicit_rounded,
                        size: 18,
                        color: Theme.of(context).errorColor,
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
                Text(
                  "${songModel.author.name}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
                Text(
                  ', ',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(
                  "${songModel.feat.name}",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ],
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
                _showAutoScrolling = false;
                _showTextSize = false;
                _showFilterSettings = !_showFilterSettings;
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            _filterSettings,
            Container(
              height: _showAutoScrolling || _showTextSize == true
                  ? MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      56 -
                      56 -
                      56
                  : _showFilterSettings == true
                      ? MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top -
                          56 -
                          56 -
                          469
                      : MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top -
                          56 -
                          56,
              width: MediaQuery.of(context).size.width,
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
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Tom: ',
                            ),
                            TextSpan(
                              text: 'Em',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\nEm                          D    C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nCan you hear me? S.O.S',
                            ),
                            TextSpan(
                              text:
                                  '\nC                         D            Em',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nHelp me put my mind to rest',
                            ),
                            TextSpan(
                              text:
                                  '\nEm                                      D         C ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nTwo times clear again I\'m acting low',
                            ),
                            TextSpan(
                              text:
                                  '\n   C                                  D          Em ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nA pound of weed and a bag of blow',
                            ),
                            TextSpan(
                              text:
                                  '\n\nEm                    G      D                           C ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nI can feel your love pulling me up from the underground',
                            ),
                            TextSpan(
                              text: '\nEm                      G',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nI don\'t need my drugs',
                            ),
                            TextSpan(
                              text:
                                  '\nD                                                              C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nWe could be more than just part-time lovers',
                            ),
                            TextSpan(
                              text:
                                  '\nEm                    G      D                           C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nI can feel your touch picking me up from the underground',
                            ),
                            TextSpan(
                              text: '\nEm                      G',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nI don\'t need my drugs',
                            ),
                            TextSpan(
                              text:
                                  '\nD                                                              C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nWe could be more than just part-time lovers',
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "\n[Refrão]",
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\n( Em  G  C  D )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n\nEm  G  C                                                              D ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n            We could be more than just part-time lovers',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            TextSpan(
                              text: '\n\n( Em  G  C  D )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n\nEm  G  C                                                              D ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n            We could be more than just part-time lovers',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            TextSpan(
                              text: '\n\n( Em  G  C  D )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\n( Em  G  C  D )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\n\nEm                     D        C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nI get robbed of all my sleep',
                            ),
                            TextSpan(
                              text:
                                  '\nC                             D        Em',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nAs my thoughts begin to leave',
                            ),
                            TextSpan(
                              text: '\nEm                D                 C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nI let go but I don\'t know how',
                            ),
                            TextSpan(
                              text:
                                  '\n            C                              D              Em',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nYeah I don\'t know how but I need to now',
                            ),
                            TextSpan(
                              text: '\n\n( Em  G  C  D )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '\nEm                    G      D                           C ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nI can feel your love pulling me up from the underground',
                            ),
                            TextSpan(
                              text: '\nEm                      G',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nI don\'t need my drugs',
                            ),
                            TextSpan(
                              text:
                                  '\nD                                                              C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nWe could be more than just part-time lovers',
                            ),
                            TextSpan(
                              text:
                                  '\nEm                    G      D                           C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nI can feel your touch picking me up from the underground',
                            ),
                            TextSpan(
                              text: '\nEm                      G',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nI don\'t need my drugs',
                            ),
                            TextSpan(
                              text:
                                  '\nD                                                              C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\nWe could be more than just part-time lovers',
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '\n\nEm  G  C                                                              D ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n            We could be more than just part-time lovers',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            TextSpan(
                              text: '\n\n( Em  G  C  D )',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n\nEm  G  C                                                              D ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text:
                                  '\n            We could be more than just part-time lovers',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\nEm                          D    C',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nCan you hear me? S.O.S',
                            ),
                            TextSpan(
                              text:
                                  '\nC                         D            Em',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context).primaryColor),
                            ),
                            TextSpan(
                              text: '\nHelp me put my mind to rest',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: songModel.isVideoLessons == true,
        child: FloatingActionButton.extended(
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
                  icon: Icon(Icons.format_size_rounded,
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
                      _showTextSize = false;
                      _showAutoScrolling = !_showAutoScrolling;
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
