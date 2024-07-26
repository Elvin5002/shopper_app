import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {

  const ColorContainer({ super.key, required this.color });
  final Color color;
   @override
   Widget build(BuildContext context) {
       return Container(
        width: 27,
        height: 27,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color
        ),
       );
  }
}