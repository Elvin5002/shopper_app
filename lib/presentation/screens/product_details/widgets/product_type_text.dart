import 'package:flutter/material.dart';

import '../../../../data/models/remote/product_detail_response.dart';
import '../../../../utils/constants/app_colors.dart';

class ProductTypeText extends StatelessWidget {
  const ProductTypeText({super.key, required this.product});

  final ProductDetailResponse product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.category?.name ?? 'Unknown',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.gray,
      ),
    );
  }
}
