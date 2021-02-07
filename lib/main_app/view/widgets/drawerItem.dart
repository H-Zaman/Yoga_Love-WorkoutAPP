import 'package:flutter/material.dart';
import 'package:workout/main_app/model/drawerItemModel.dart';
import 'package:workout/util/resource/color.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel item;
  DrawerItem({
    this.item
});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        item.icon,
        color: AppColor.white,
        size: 20,
      ),
      title: Text(
        item.label,
        style: TextStyle(
          color: AppColor.white,
          fontSize: 14,
          fontFamily: 'R'
        ),
      ),
    );
  }
}
