import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout/main_app/view/landingScreen.dart';
import 'package:workout/util/resource/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Yoga Love',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'L',
        scaffoldBackgroundColor: AppColor.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColor.dark
          )
        )
      ),
      defaultTransition: Transition.cupertino,
      home: LandingScreen(),
    );
  }
}