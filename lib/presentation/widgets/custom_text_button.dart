import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor = AppColors.gray,
    this.fontSize,
    this.fontWeight = FontWeight.w600,
  });

  final void Function() onPressed;
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(foregroundColor: Colors.grey),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ));
  }
}
