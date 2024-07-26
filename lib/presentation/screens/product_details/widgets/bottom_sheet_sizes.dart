import 'package:flutter/material.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import 'size_list.dart';
import 'bottom_sheet_titles.dart';

class BottomSheetSizes extends StatelessWidget {

  const BottomSheetSizes({ super.key });

   @override
   Widget build(BuildContext context) {
       return Row(
        children: [
          const BottomSheetTitles(title: AppStrings.sizeTitle),
          40.w,
          const SizeList(),
        ],
       );
  }
}