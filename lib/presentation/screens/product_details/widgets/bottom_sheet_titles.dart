import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';

class BottomSheetTitles extends StatelessWidget {

  const BottomSheetTitles({ super.key, required this.title });
  final String title;
   @override
   Widget build(BuildContext context) {
       return Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.blackText
        ),
       );
  }
}