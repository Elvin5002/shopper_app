import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';

import '../../utils/constants/app_borders.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/extensions/sizedbox_extension.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.title,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.fillColor = AppColors.inputTextBgColor,
    this.hintText,
    this.maxLines = 1,
    this.counterText,
    this.maxLength,
    this.enableCounter = false,
  });

  final String? title;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextEditingController? controller;
  final Color? fillColor;
  final String? hintText;
  final int? maxLines;
  final int? maxLength;
  final String? counterText;
  final bool enableCounter;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Text(
                title!,
                style: AppTextStyles.customTextFieldTitleStyle,
              )
            : const SizedBox.shrink(),
        15.h,
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLines:
              maxLines != null && obscureText == false && enableCounter == true
                  ? maxLines! + 1
                  : maxLines,
          maxLength: maxLength,
          validator: validator,
          buildCounter: enableCounter == true
              ? (BuildContext context,
                  {int? currentLength, int? maxLength, bool? isFocused}) {
                  return Transform.translate(
                    offset: const Offset(-5, -40),
                    child: Text(
                      '$currentLength of $maxLength characters',
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  );
                }
              : null,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: const TextStyle(color: AppColors.inputTextColor),
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            counterText: enableCounter == false ? "" : counterText,
            contentPadding: enableCounter
                ? const EdgeInsets.only(bottom: 70, left: 20, right: 20)
                : AppPaddings.v10h20,
            fillColor: fillColor,
            filled: true,
            border: AppBorders.defaultInputBorder,
            errorBorder: AppBorders.errorInputBorder,
          ),
        )
      ],
    );
  }
}
