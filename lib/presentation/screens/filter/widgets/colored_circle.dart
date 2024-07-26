import 'package:flutter/material.dart';

class ColoredCircle extends StatelessWidget {
const ColoredCircle({ super.key, required this.color });

  final Color color;

  @override
  Widget build(BuildContext context){
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}