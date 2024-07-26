import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';

class DiscountIcon extends StatelessWidget {
const DiscountIcon({ super.key, required this.text });

  final String text;

  @override
  Widget build(BuildContext context){
    return Container(
      width: 86,
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.black,
          width: 1.5,
        ),
      ),
      child: Center(child: Text(text)),
    );
  }
}