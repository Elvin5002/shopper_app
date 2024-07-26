import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';


class ColorModel {
  final Color color;

  const ColorModel({required this.color});

  static const List<ColorModel> colors = [
    ColorModel(color: AppColors.blackProductColor),
    ColorModel(color: AppColors.greenProductColor),
    ColorModel(color: AppColors.creamProductColor),
  ];
}