import 'package:flutter/material.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import 'color_list.dart';
import 'bottom_sheet_titles.dart';

class BottomSheetColors extends StatelessWidget {
  const BottomSheetColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BottomSheetTitles(title: AppStrings.colorTitle),
        33.w,
        const ColorList(),
      ],
    );
  }
}
