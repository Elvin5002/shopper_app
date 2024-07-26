import 'dart:math';
import 'package:flutter/material.dart';


class AppColors {
  AppColors._();

  static const Color inputTextBgColor = Color(0xFFFAFAFF);
  static const Color inputTextColor = Color(0xFF06100F);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color gray = Color(0xFF6C6D76);
  static const Color blackText = Color(0xFF1C1C25);
  static const Color buttonColorLightGreen = Color(0xffCDE9D4);
  static const Color greyReviewTime = Color(0xffE4E4E4);
  static const Color favoriteIconBackgroundColor = Color.fromRGBO(228, 228, 228, 1);
  static const Color searchIconBackgroundColor = Color.fromRGBO(205, 233, 212, 1);

  static const Color primaryColor = Color(0XFFCDE9D4);
  static const Color iconGrayBacgroundColor = Color(0XFFE4E4E4);
  static const Color searchInputFillColor = Color(0xFF1C1C25);

  static const searchBoxBorderColor = Color(0xffE4E4E4);

  static const green = Color(0xffCDE9D4);
  static const brown = Color(0xff474340);
  static const beige = Color(0xffEDD1B8);
  static const lightbrw = Color(0xffCD996F);
  static const darkbrw = Color(0xff933043);
  static const purple = Color(0xff6E4E97);
  static const pink = Color(0xffDFA8A9);
  static const blue = Color(0xff4A7BD5);
  static const grey = Color(0xfff4f4f7);
  static const lgrey = Color(0xffF3F3F6);
  static const lblack = Color(0xff33302E);
  static const Color priceColor = Color(0xffF45959);
  static const Color blackProductColor = Color(0xff001833);
  static const Color greenProductColor = Color(0xff3CA390);
  static const Color creamProductColor = Color(0xffFFF7ED);
  static Color appBackground = const Color(0xffF7F7F7);
  static Color selectedCategoryButton = const Color(0xffCDE9D4);
  static const Color darkGray = Color(0xff1C1C25);
  static Color unselectedCategoryButton = const Color(0xffE4E4E4);
  static Color randomImageBackgroundColor = Color((Random().nextDouble()*0xffffff).toInt() << 0).withOpacity(1);
  static Color favoriteIconButton = const Color(0xff1c1c25);
  static Color checkBoxColor = const Color(0xffCDE9D4);
  static const transparent = Colors.transparent;
  static const sunglassesBoxBG = Color(0xffF5F0EC);
  static const sunglassesCostColor = Color(0xffF45959);
  static const Color whiteProductColor = Color(0xffF7F8FB);
  static const Color incrementColor = Color(0xff9B99F5);
  static const Color error = Colors.red;
  static const lightGrey = Color(0xff6C6D76);




  //Todo: Color(0XFFE4E4E4); this color is repeated 4 times. fix it
  //Todo: Color(0xFF1C1C25); this color is repeated 3 times. fix it
}
