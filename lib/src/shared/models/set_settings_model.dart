import 'package:flutter/material.dart';

class SetSettingsModel {
  final bool? isIcon;
  final IconData? icon;
  final String label;
  final bool? isSublabel;
  final String? sublabel;
  final bool? isSwitch;

  const SetSettingsModel.cipher({
    this.isSwitch = false,
    this.icon = Icons.add,
    required this.label,
    this.isIcon = false,
    this.isSublabel = true,
    required this.sublabel,
  });

  const SetSettingsModel.downloads({
    this.isSwitch = false,
    this.icon = Icons.add,
    required this.label,
    this.isIcon = true,
    this.isSublabel = true,
    required this.sublabel,
  });

  const SetSettingsModel({
    this.isSwitch = false,
    this.icon = Icons.add,
    required this.label,
    this.isIcon = false,
    this.isSublabel = false,
    this.sublabel = "",
  });
}
