import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItemModel{
  IconData icon;
  String label;
  DrawerItemModel({
    this.icon,
    this.label
});
  static final items = <DrawerItemModel>[
    DrawerItemModel(icon: Icons.star_border_rounded, label: 'Prime'),
    DrawerItemModel(icon: CupertinoIcons.person_badge_plus, label: 'Account'),
    DrawerItemModel(icon: CupertinoIcons.calendar, label: 'Plan'),
    DrawerItemModel(icon: Icons.settings_outlined, label: 'Settings'),
    DrawerItemModel(icon: Icons.exit_to_app, label: 'Logout'),
  ];
}