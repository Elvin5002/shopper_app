import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import 'rating_icon.dart';

class RatingView extends StatelessWidget {
const RatingView({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.ratingTxt, style: AppTextStyles.labeltxtStyle,),
        20.h,
        Row(
          children: [
            for(int i = 1; i <= 5; i++) ...[
              RatingIcon(
                color: AppColors.white,
                rating: i.toString(),
              ),
              20.w
            ]
          ],
        )
      ],
    );
  }
}