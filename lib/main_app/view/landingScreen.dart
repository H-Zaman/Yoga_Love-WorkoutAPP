import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout/util/resource/color.dart';

import 'homeScreen/homeScreen.dart';
import 'widgets/appName.dart';
import 'widgets/backgroundImage.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: BackgroundImage(),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.dark.withOpacity(.8),
                  AppColor.main.withOpacity(.2),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft
              )
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 45,
                  child: Container(),
                ),
                Expanded(
                  flex: 55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppName(),
                      Text(
                        'FIND OUT EXACTLY WHAT DIET &\nTRAINING WILL WORK SPECIFICALLY\nFOR YOU.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'R',
                          color: AppColor.white,
                          fontSize: 16
                        ),
                      ),

                      FlatButton(
                        onPressed: () => Get.offAll(HomeScreen()),
                        color: AppColor.main,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                          child: Text(
                            'Try It Now',
                            style: TextStyle(
                              fontFamily: 'B',
                              fontSize: 18,
                              color: AppColor.white
                            ),
                          ),
                        ),
                      ),

                      Text(
                        'Not a member? Signup now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.ash,
                          fontSize: 12
                        ),
                      ),
                      Text(
                        'Forgot password?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'R',
                          color: Colors.white,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
