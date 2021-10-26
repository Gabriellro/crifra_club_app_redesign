import 'package:crifra_club_app_redesign/src/shared/models/set_settings_model.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class SetSettingsWidget extends StatelessWidget {
  final List<SetSettingsModel> setSettingsModels;

  const SetSettingsWidget({
    Key? key,
    required this.setSettingsModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Container(
      height: 120,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemCount: setSettingsModels.length,
        itemBuilder: (BuildContext context, int index) {
          final SetSettingsModel setSettingsModel = setSettingsModels[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: InkWell(
              // onTap: () => setState(() => isSwitched = !isSwitched),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: setSettingsModel.isIcon!,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).cardColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          setSettingsModel.icon!,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    setSettingsModel.label,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Spacer(),
                  setSettingsModel.isSublabel!
                      ? Text(
                          setSettingsModel.sublabel!,
                          style: Theme.of(context).textTheme.caption,
                        )
                      : setSettingsModel.isSwitch!
                          ? Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                // setState(() {
                                //   isSwitched = value;
                                //   print(isSwitched);
                                // });
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
            ),
          );
        },
      ),
    );
  }
}
