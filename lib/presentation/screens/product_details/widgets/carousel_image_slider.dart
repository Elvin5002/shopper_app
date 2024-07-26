import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/endpoints.dart';

import '../../../../data/models/remote/product_detail_response.dart'
    as product_detail;
import '../../../../utils/constants/app_assets.dart';

class CarouselImageSlider extends StatelessWidget {
  const CarouselImageSlider({
    super.key,
    required this.product,
  });

  final product_detail.ProductDetailResponse product;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
        enableInfiniteScroll: ((product.images ?? []).length) > 1,
        viewportFraction: 0.87,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: (product.images ?? [])
          .map((item) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: item.image != null
                    ? Image.network(
                        '${Endpoints.baseUrl}${item.image!}',
                        fit: BoxFit.cover,
                        width: 325,
                      )
                    : Image.asset(
                        AppAssets.defaultProductImage,
                        fit: BoxFit.cover,
                        width: 325,
                      ),
              ))
          .toList(),
    );
  }
}
