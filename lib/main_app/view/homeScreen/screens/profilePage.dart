import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout/__demoData/demoData.dart';
import 'package:workout/main_app/model/profileListItemModel.dart';
import 'package:workout/main_app/view/widgets/columnItemWidget.dart';
import 'package:workout/main_app/view/widgets/profileListViewItem.dart';
import 'package:workout/util/resource/color.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            /// top profile
            Expanded(
              flex: 35,
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: Get.mediaQuery.padding.top + AppBar().preferredSize.height
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xffB6D0E6),
                      Color(0xffE3EDF5),
                    ]
                  )
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12,sigmaY: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey
                              )
                            ),
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: CachedNetworkImageProvider(
                                Demo.profilePic
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  Demo.firstName,
                                  style: TextStyle(
                                    fontFamily: 'B',
                                    fontSize: 24,
                                    color: AppColor.dark
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '"Welcome to Yoga Love, Lets just do it!"',
                                  style: TextStyle(
                                    color: AppColor.lightGrey,
                                    fontSize: 12,
                                    fontFamily: 'R'
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ColumnItemWidget(
                            label: 'Posts',
                            value: 23,
                          ),
                          ColumnItemWidget(
                            label: 'Follower',
                            value: 69,
                          ),
                          ColumnItemWidget(
                            label: 'Following',
                            value: 82,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// try prime
            Expanded(
              flex: 15,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14,horizontal: 25),
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.main,
                      Color(0xffB5B3E3)
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.tornado,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Yoga Love Prime',
                              style: TextStyle(
                                fontFamily: 'B+',
                                fontSize: 14,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Join Yoga Love Prime Today ',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'R',
                                color: Colors.white
                              ),
                            ),
                            Text(
                              '69%',
                              style: TextStyle(
                                  height: 1.2,
                                  fontSize: 12,
                                  fontFamily: 'B',
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      color: Colors.white,
                      child: Text(
                        'TRY PRIME',
                        style: TextStyle(
                          fontFamily: 'B',
                          color: AppColor.main
                        ),
                      ),
                    )
                  ],
                )
              )
            ),

            /// listview
            Expanded(
              flex: 50,
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                itemCount: ProfileListItemModel.items.length,
                itemBuilder: (_, index) => ProfileListViewItem(item: ProfileListItemModel.items[index]),
              )
            ),
          ],
        ),

        /// settings button
        Positioned(
          top: Get.mediaQuery.padding.top + 5,
          right: 10,
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.settings_outlined,
              color: AppColor.main,
            ),
          ),
        )
      ],
    );
  }
}