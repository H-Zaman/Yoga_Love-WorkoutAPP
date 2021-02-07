import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:workout/__demoData/demoData.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/model/drawerItemModel.dart';
import 'package:workout/main_app/repository/weather.dart';
import 'package:workout/main_app/view/widgets/circleBg.dart';
import 'package:workout/main_app/view/widgets/drawerItem.dart';
import 'package:workout/util/resource/color.dart';

import 'screens/homePage.dart';
import 'screens/profilePage.dart';
import 'screens/storePage.dart';
import 'screens/trainingPage.dart';

class HomeScreen extends StatelessWidget {
  static var navIndex = 0.obs;
  static changeNav(int index) => navIndex.value = index;
  static final _drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: HomeScreen._drawerController,
      menuScreen: MenuScreen(),
      mainScreen: MainScreen(),
      borderRadius: 24.0,
      showShadow: true,
      angle: -10.0,
      backgroundColor: Colors.grey[300].withOpacity(.4),
      slideWidth: MediaQuery.of(context).size.width*(ZoomDrawer.isRTL()? .45: 0.65),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(HomeScreen._drawerController.isOpen()){
          HomeScreen._drawerController.close();
        }
      },
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              leadingWidth: 60,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20,top: 8,bottom: 8),
                child: InkWell(
                  onTap: (){
                    HomeScreen._drawerController.open();
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
                    radius: 22,
                    backgroundColor: AppColor.dark,
                    child: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                          Demo.profilePic
                      ),
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
      ),
    );
  }
}


class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(HomeScreen._drawerController.isOpen()){
          HomeScreen._drawerController.close();
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.main,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Icon(
                      CupertinoIcons.bell,
                      color: AppColor.white,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 10,
                      ),
                    )
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(left: 20,top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle
                  ),
                  padding: EdgeInsets.all(4),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: CachedNetworkImageProvider(
                      Demo.profilePic
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 4,top: 4),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Hi, ',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'B'
                      ),
                      children: [
                        TextSpan(
                          text: Demo.firstName
                        )
                      ]
                    ),
                  ),
                ),

                SizedBox(height: 40),
                ListView(
                  shrinkWrap: true,
                  children: DrawerItemModel.items.map((e) => DrawerItem(item: e)).toList()
                ),

                Spacer(),

                FutureBuilder(
                  future: WeatherAPI.getWeather(),
                  builder: (_,snapshot){
                    if(snapshot.hasData && snapshot.connectionState == ConnectionState.done){
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: '${snapshot.data['current']['temp_c']}',
                              style: TextStyle(
                                fontSize: 42,
                                fontFamily: 'B',
                                height: 0.5
                              ),
                              children: [
                                TextSpan(
                                  text: ' °C',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: 'R'
                                  )
                                )
                              ]
                            ),
                          ),
                          Text(
                            '${snapshot.data['current']['condition']['text']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'R',
                              fontSize: 16
                            ),
                          ),
                          Text(
                            '${snapshot.data['location']['name']}, ${snapshot.data['location']['country']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'R',
                              fontSize: 10
                            ),
                          )
                        ],
                      );
                    }else{
                      return CircularProgressIndicator();
                    }
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      )
    );
  }
}
