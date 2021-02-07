import 'package:flutter/material.dart';
import 'package:workout/util/resource/color.dart';

class CustomTab extends StatelessWidget {
  final String label;
  final bool isActive;
  CustomTab({@required this.label, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: isActive ? AppColor.dark : AppColor.blueGrey,
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 3),
      child: Tab(
        text: label,
      ),
    );
  }
}
