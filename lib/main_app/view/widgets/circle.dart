import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final Color color;
  final double size;
  Circle({@required this.color, @required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      ),
    );
  }
}
