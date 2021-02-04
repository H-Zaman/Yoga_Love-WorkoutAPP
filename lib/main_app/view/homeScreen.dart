import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout/__demoData/demoData.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/view/screens/homePage.dart';
import 'package:workout/main_app/view/screens/profilePage.dart';
import 'package:workout/main_app/view/screens/storePage.dart';
import 'package:workout/main_app/view/screens/trainingPage.dart';
import 'package:workout/main_app/view/widgets/circleBg.dart';

class HomeScreen extends StatelessWidget {
  static var navIndex = 0.obs;
  static changeNav(int index) => navIndex.value = index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 8,bottom: 8),
          child: InkWell(
            onTap: (){

            },
            borderRadius: BorderRadius.circular(13),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]
                ),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                borderOnForeground: true,
                child: Icon(
                  CupertinoIcons.square_grid_2x2,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                Demo.profilePic
              ),
            ),
          )
        ]
      ),
      body: Stack(
        children: [
          CircleBackground(),
          IndexedStack(
            index: HomeScreen.navIndex.value,
            children: [
              HomePage(),
              TrainingPage(),
              StorePage(),
              ProfilePage(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade200.withOpacity(0.2),
          ),
          child: Container(
            height: 60,
            width: double.infinity,
            color: Colors.grey.shade200.withOpacity(.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                    Icons.api
                ),
                Icon(
                    Icons.api
                ),
                Icon(
                    Icons.api
                ),
                Icon(
                    Icons.api
                ),
                Icon(
                    Icons.api
                ),
              ],
            ),
          ),
      )
    );
  }
}