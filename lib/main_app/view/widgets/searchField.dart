import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/util/resource/color.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          CupertinoIcons.search,
          color: AppColor.lightGrey,
        ),
        contentPadding: EdgeInsets.zero,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: AppColor.lightGrey,
          fontFamily: 'R'
        ),
        fillColor: AppColor.blueGrey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}
