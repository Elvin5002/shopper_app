import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../data/models/remote/product_detail_response.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';

class SellerNameReviewNumber extends StatelessWidget {
  const SellerNameReviewNumber({super.key, required this.product});

  final ProductDetailResponse product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Text(
            product.name ?? '',
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppColors.blackText,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '(${product.reviewsCount ?? 0} reviews)',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: AppColors.gray,
            ),
          ),
        ),
      ],
    );
  }
}
