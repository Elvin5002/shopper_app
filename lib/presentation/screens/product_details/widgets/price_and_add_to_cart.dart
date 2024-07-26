import 'package:flutter/material.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'add_to_cart_button.dart';
import 'price.dart';

class PriceAndAddToCart extends StatelessWidget {
  final int id;
  const PriceAndAddToCart({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Price(),
          const Spacer(),
          // AddToCartButton(
          //   id: id,
          // ),
        ],
      ),
    );
  }
}
