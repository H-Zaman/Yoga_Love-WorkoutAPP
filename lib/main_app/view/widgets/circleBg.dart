import 'package:flutter/material.dart';

import 'circle.dart';

class CircleBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: -100,
            left: 70,
            child: Circle(color: Color(0xffFFB4AD).withOpacity(.15),size: 230)
        ),
        Positioned(
            top: -130,
            right: -140,
            child: Circle(color: Color(0xffB1B1D8).withOpacity(.15),size: 300,)
        ),
      ],
    );
  }
}
