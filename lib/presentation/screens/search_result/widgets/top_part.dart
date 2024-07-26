import 'package:flutter/material.dart';

import 'package:shopper_app/presentation/widgets/rounded_button.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';

class TopPart extends StatelessWidget {

  const TopPart({
    super.key,
    required this.sunglassesLength,
  });
  final String sunglassesLength;
   @override
   Widget build(BuildContext context) {
       return SizedBox(
                  width: context.fullWidth,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$sunglassesLength Items',style: AppTextStyles.searchTextStyle,),
                      const Row(
                        children: [
                          RoundedIconButton.svg(svgAssetName: AppAssets.darhboard,backgroundColor: AppColors.transparent,fixedSize: Size.square(10),),
                          RoundedIconButton.svg(svgAssetName: AppAssets.menu,backgroundColor: AppColors.transparent,fixedSize: Size.square(10),)
                        ],
                      )
                    ],
                  ),
                );
  }
}
