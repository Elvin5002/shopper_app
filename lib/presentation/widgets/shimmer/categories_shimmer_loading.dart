import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_radiuses.dart';

class CategoriesShimmerLoading extends StatelessWidget {
  const CategoriesShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    const listLength = 3;
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: Padding(
        padding: AppPaddings.l15,
        child: Row(
          children: List.generate(
            listLength,
            (index) => Expanded(
              flex: listLength - index + 2,
              child: Container(
                height: 40,
                padding: AppPaddings.a24,
                margin: AppPaddings.l10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: AppRadiuses.a8,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
