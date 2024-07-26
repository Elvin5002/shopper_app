import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_radiuses.dart';

class AppBorders {
  AppBorders._();

  static const defaultInputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a10,
    borderSide: BorderSide.none,
  );

  static const errorInputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a10,
    borderSide: BorderSide(color: Colors.red),
  );

  static const serachedBoxBorder =
      BorderSide(color: AppColors.searchBoxBorderColor);

  static const searchInputBorder = OutlineInputBorder(
    borderRadius: AppRadiuses.a6,
    borderSide: BorderSide(color: Colors.black),
  );

  static final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColors.gray),
  );

  static final focusedBorder = inputBorder.copyWith(
    borderSide: const BorderSide(color: AppColors.black, width: 2),
  );
}
