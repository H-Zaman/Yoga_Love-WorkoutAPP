import 'package:flutter/material.dart';
import 'package:workout/main_app/view/widgets/searchField.dart';
import 'package:workout/util/constants.dart';
import 'package:workout/util/resource/color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: Constants.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'B',
                    color: AppColor.dark
                  ),
                ),
                Text(
                  'Welcome to Yoga Love',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.lightGrey,
                    fontFamily: 'R'
                  ),
                ),
                SizedBox(height: 30),
                SearchField(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
