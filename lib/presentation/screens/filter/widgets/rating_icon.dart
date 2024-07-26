import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';

class RatingIcon extends StatelessWidget {
const RatingIcon({ super.key, required this.color, required this.rating });

  final Color color;
  final String rating;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.brown,
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.star, size: 15,),
          2.w,
          Text(rating),
        ],
      ),
    );
  }
}