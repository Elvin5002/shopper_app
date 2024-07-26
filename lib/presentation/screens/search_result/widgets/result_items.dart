import 'package:flutter/material.dart';

import 'package:shopper_app/data/models/local/sunglasses.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class ResultItems extends StatelessWidget {

  const ResultItems({
    super.key,
    required this.sunglasses,
  });
  final Sunglasses sunglasses;
   @override
   Widget build(BuildContext context) {
       return Container(
                  height: context.fullHeight * 0.24,
                  padding: AppPaddings.t5r20b5l20,
                  decoration: const BoxDecoration(
                    color: AppColors.sunglassesBoxBG,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.9),
                    ),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(sunglasses.image),
                      8.h,
                      Text(sunglasses.name,style: AppTextStyles.searchTextStyle,),
                      8.h,
                      Text(sunglasses.price,style: AppTextStyles.sunglassesCostStyle,),
                    ],
                  ),
                );
  }
}
