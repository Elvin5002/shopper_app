import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';

class SizeContainer extends StatelessWidget {

  const SizeContainer({ super.key, required this.text });
  final String text;
   @override
   Widget build(BuildContext context) {
       return Container(
        width: 29,
        height: 29,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white,
          border: Border.all(
            width: 1,
            color: AppColors.gray,
          )
        ),
        child: Center(child: Text(text)),
       );
  }
}