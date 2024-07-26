import 'package:flutter/material.dart';
import '../../../../data/models/local/discount_data_images.dart';

class ScrollableImage extends StatelessWidget {
  const ScrollableImage({super.key});

  @override
  Widget build(BuildContext context) {
    List<DiscountDataImages> discountData = DiscountDataImages.discountData;
    return SizedBox(
      height: 160,
      child: PageView.builder(
        itemCount: discountData.length,
        itemBuilder: (context, index) {
          final discount = discountData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset(discount.imageLink, fit: BoxFit.cover),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
