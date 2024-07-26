import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';

class AddToCartText extends StatelessWidget {

  const AddToCartText({ super.key, required this.color });
  final Color color;
   @override
   Widget build(BuildContext context) {
       return Text(
        AppStrings.addToCart,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      );
  }
}