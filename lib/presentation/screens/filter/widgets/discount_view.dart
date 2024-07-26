import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import 'discount_view_builder.dart';

class DiscountView extends StatelessWidget {
const DiscountView({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.discountTxt, style: AppTextStyles.labeltxtStyle,),
        20.h,
        Row(
          children: [
            const DiscountViewBuilder(),
            10.w,
            Container(
              width: 38,
              height: 96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.green
              ),
              child: const Center(child: Text(AppStrings.allTxt)),
            )
          ],
        )
      ],
    );
  }
}