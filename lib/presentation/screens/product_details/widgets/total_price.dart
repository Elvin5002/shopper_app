import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/bottom_sheet_titles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BottomSheetTitles(title: AppStrings.totalPayment),
        Text(
          AppStrings.price40,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.priceColor,
          ),
        )
      ],
    );
  }
}
