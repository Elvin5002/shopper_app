import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.thirdText,
    this.firstTextStyle = const TextStyle(color: AppColors.gray),
    this.secondTextStyle =
        const TextStyle(color: AppColors.blackText, fontWeight: FontWeight.w600),
    this.thirdTextStyle = const TextStyle(color: AppColors.blackText),
    this.textAlign = TextAlign.center,
    this.firstTextOnTap,
    this.secondTextOnTap,
    this.thirdTextOnTap,
  });

  final String firstText;
  final String secondText;
  final String? thirdText;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final TextStyle? thirdTextStyle;
  final TextAlign textAlign;
  final void Function()? firstTextOnTap;
  final void Function()? secondTextOnTap;
  final void Function()? thirdTextOnTap;



  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        text: firstText,
        recognizer: TapGestureRecognizer()..onTap = firstTextOnTap,
        style: firstTextStyle,
        children: [
          TextSpan(
            text: secondText,
            recognizer: TapGestureRecognizer()..onTap = secondTextOnTap,
            style: secondTextStyle,
          ),
          if (thirdText != null)
            TextSpan(
              text: thirdText,
              recognizer: TapGestureRecognizer()..onTap = thirdTextOnTap,
              style: thirdTextStyle,
            ),
        ],
      ),
    );
  }
}
