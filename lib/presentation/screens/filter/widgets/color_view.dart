import 'package:flutter/material.dart';
import 'colored_circle.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_radiuses.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';

class ColorView extends StatelessWidget {
const ColorView({ super.key });

  @override
  Widget build(BuildContext context){
    List<Color> colors = [AppColors.beige, AppColors.brown, AppColors.blue, AppColors.pink, AppColors.purple, AppColors.lightbrw, AppColors.darkbrw];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.colorTxt, style: AppTextStyles.labeltxtStyle,),
        20.h,
        Row(
          children: [
            Container(
              width: 38,
              height: 23,
              decoration: const BoxDecoration(
                borderRadius: AppRadiuses.a20, 
                color: AppColors.green
              ),
              child: const Center(child: Text(AppStrings.allTxt)),
            ),
            for(int i = 0; i < colors.length; i++) ...[
              15.w,
              ColoredCircle(color: colors[i])
            ]
          ],
        ) 
      ],
    );
  }
}