import 'package:crifra_club_app_redesign/src/shared/models/_export_models.dart';
import 'package:flutter/material.dart';

class SetSettingsWidget extends StatefulWidget {
  final List<SetSettingsModel> setSettingsModels;

  const SetSettingsWidget({Key? key, required this.setSettingsModels})
      : super(key: key);

  @override
  State<SetSettingsWidget> createState() => _SetSettingsWidgetState();
}

class _SetSettingsWidgetState extends State<SetSettingsWidget> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Container(
      height: 400,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: widget.setSettingsModels.length,
          itemExtent: 48,
          itemBuilder: (BuildContext context, int index) {
            final SetSettingsModel setSettingsModel =
                widget.setSettingsModels[index];
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Visibility(
                visible: setSettingsModel.isIcon!,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).cardColor,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      setSettingsModel.icon!,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
              minLeadingWidth: 0,
              title: Text(
                setSettingsModel.label,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              trailing: setSettingsModel.isSublabel!
                  ? Text(
                      setSettingsModel.sublabel!,
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  : setSettingsModel.isSwitch!
                      ? Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Theme.of(context).primaryColor,
                          activeColor: Theme.of(context).primaryColor,
                        )
                      : Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Theme.of(context).iconTheme.color,
                        ),
            );
          },
        ),
      ),
    );
  }
}
