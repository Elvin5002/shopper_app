import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/endpoints.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/presentation/widgets/product_price.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import '../../../../../data/models/remote/products_response.dart' as api;

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key, required this.product});
  final api.Result product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l15,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray, width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            product.image?.image != null
                ? Expanded(
                    child: Image.network(
                      '${Endpoints.baseUrl}${product.image?.image}',
                    ),
                  )
                : Image.asset('assets/png/hat.png'),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  5.w,
                  ProductPrice(
                    priceAmount: product.totalPrice?.toStringAsFixed(2) ?? '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
