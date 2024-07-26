import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncrementDecrementBox extends StatelessWidget {
  const IncrementDecrementBox({
    super.key,
    required this.bgColor,
    required this.iconColor,
    required this.borderColor,
    required this.icon,
  });
  final Color bgColor;
  final Color iconColor;
  final Color borderColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 23,
        height: 23,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
            border: Border.all(
              width: 1.5,
              color: borderColor,
            )),
        child: Center(
            child: FaIcon(
          icon,
          size: 19,
          color: iconColor,
        )));
  }
}
