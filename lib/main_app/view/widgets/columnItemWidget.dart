import 'package:flutter/material.dart';
import 'package:workout/util/resource/color.dart';

class ColumnItemWidget extends StatelessWidget {
  final String label;
  final int value;

  const ColumnItemWidget({Key key, this.label, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontFamily: 'B',
            fontSize: 20,
            color: AppColor.dark
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: AppColor.lightGrey
          ),
        ),
      ],
    );
  }
}