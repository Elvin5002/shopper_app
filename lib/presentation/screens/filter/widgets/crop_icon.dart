import 'package:flutter/material.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';

class CropIcon extends StatelessWidget {
const CropIcon({ super.key });

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Image.asset(AppAssets.crop),
        5.w,
        const Text(AppStrings.cropTxt)
      ],
    );
  }
}