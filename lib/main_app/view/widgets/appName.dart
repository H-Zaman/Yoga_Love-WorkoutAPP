import 'package:flutter/material.dart';
import 'package:workout/util/resource/color.dart';

class AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 4,
          left: 4,
          child: Text(
            'Yoga\n    Love',
            style: TextStyle(
              fontFamily: 'B+',
              height: 1.1,
              letterSpacing: 8,
              fontSize: 72,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = .7
                ..color = Colors.grey[50]
            ),
          ),
        ),
        Text(
          'Yoga\n    Love',
          style: TextStyle(
            color: AppColor.ash,
            fontFamily: 'B+',
            height: 1.1,
            letterSpacing: 8,
            fontSize: 72,
            shadows: [
              Shadow(
                color: Colors.white,
                offset: Offset.zero,
                blurRadius: 7,
              )
            ]
          ),
        ),
      ],
    );
  }
}
