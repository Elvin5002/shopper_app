import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../../../../data/models/remote/product_detail_response.dart';

class StarList extends StatelessWidget {
  const StarList({super.key, required this.product});

  final ProductDetailResponse product;

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: product.rating ?? 0,
      valueLabelVisibility: false,
      starBuilder: (_, color) => Icon(
        Icons.star,
        color: color,
      ),
    );
  }
}
