import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_radiuses.dart';

class ProductsShimmerLoading extends StatelessWidget {
  const ProductsShimmerLoading({
    super.key,
    this.itemCount = 8,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: MasonryGridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: itemCount,
        padding: AppPaddings.h25,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            margin: AppPaddings.b12 + AppPaddings.h6,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: AppRadiuses.a10,
            ),
          );
        },
      ),
    );
  }
}
