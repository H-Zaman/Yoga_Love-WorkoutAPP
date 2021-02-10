import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String image;
  BackgroundImage({this.image});
  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 1,sigmaY: 1),
      child: Image.asset(
        image ?? 'assets/images/nbg.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
