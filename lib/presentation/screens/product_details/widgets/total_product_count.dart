import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import 'bottom_sheet_titles.dart';
import 'decrement.dart';
import 'increment.dart';

class TotalProductCount extends StatelessWidget {
  const TotalProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BottomSheetTitles(title: AppStrings.totalTitle),
        37.w,
        const Decrement(),
        8.w,
        const Text(
          AppStrings.productCount,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.blackText,
          ),
        ),
        8.w,
        const Increment(),
      ],
    );
  }
}
