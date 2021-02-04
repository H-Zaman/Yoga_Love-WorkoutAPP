import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String image;
  BackgroundImage({this.image});
  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 2,sigmaY: 2),
      child: Image.asset(
        image ?? 'assets/images/bg2.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
