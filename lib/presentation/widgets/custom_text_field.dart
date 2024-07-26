import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_borders.dart';
import 'package:shopper_app/utils/constants/app_radiuses.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';

import '../../utils/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.prefixIcon});
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 280,
      child: TextField(
        autofocus: true,
        cursorColor: AppColors.white,
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          fillColor: AppColors.searchInputFillColor,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: AppRadiuses.a8,
                color: AppColors.primaryColor,
              ),
              child: SvgPicture.asset(
                AppAssets.filterIcon,
                width: 20,
                height: 21,
              ),
            ),
          ),
          hintText: AppStrings.searchItems,
          border: AppBorders.searchInputBorder,
          focusedBorder: AppBorders.searchInputBorder,
          contentPadding: const EdgeInsets.only(
              top: 5), // Adjust vertical padding as needed
          hintStyle: const TextStyle(
            color: Color(0xFFE4E4E4),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
