import 'package:flutter/material.dart';
import 'crop_icon.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';

class CategoryView extends StatelessWidget {
const CategoryView({ super.key });

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.categoryTxt, style: AppTextStyles.labeltxtStyle,),
        20.h,
        Container(
          padding: AppPaddings.h10,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: AppColors.black,
              width: 1.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CropIcon(),
              Image.asset(AppAssets.vector)
            ],
          ),
        ),
      ],
    );
  }
}