import 'package:flutter/material.dart';


import 'app_colors.dart';


class AppTextStyles {
  AppTextStyles._();

  static const searchTextStyle = TextStyle(
    fontFamily: 'Nunito',
    color: AppColors.blackText,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );


  static const _w600s14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  static const labeltxtStyle = _w600s14;
  static final sunglassesCostStyle = searchTextStyle.copyWith(color: AppColors.sunglassesCostColor );

  static const signUpFirstTextStyle = _signUpFirstTextStyle;
  static const _signUpFirstTextStyle = TextStyle(
    color: AppColors.gray,
    fontWeight: FontWeight.w200,
    fontSize: 12,
  );

  static const signUpSecondTextStyle = _signUpSecondTextStyle;
  static const _signUpSecondTextStyle = TextStyle(
    color: AppColors.gray,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  
  static const customTextFieldTitleStyle = _customTextFieldTitleStyle;
  static const _customTextFieldTitleStyle = TextStyle(fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.blackText,
  );

  static const _w700s26Black = TextStyle(
    fontFamily: 'Nunito',
    color: AppColors.blackText,
    fontSize: 26,
    fontWeight: FontWeight.w700,
  );
  static const appBarTextStyle = _w700s26Black;
  static const _w600s14White = TextStyle(
    fontFamily: 'Nunito',
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const creditCardTextStyle = _w600s14White;
  static TextStyle accept = _w600s14White.copyWith(color: AppColors.searchInputFillColor);
  static TextStyle subTotalShipping = _w600s14White.copyWith(color: AppColors.lightGrey);
  static TextStyle redAmount = _w600s14White.copyWith(color: AppColors.priceColor);
}
