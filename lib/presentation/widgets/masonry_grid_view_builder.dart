import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopper_app/cubits/home/home_cubit.dart';

import '../../data/models/remote/products_response.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/extensions/navigation_extension.dart';
import '../../utils/helpers/pager.dart';
import '../screens/home/widgets/product_widget.dart';

class MasonryGridViewBuilder extends StatelessWidget {
  const MasonryGridViewBuilder({
    super.key,
    required this.productResponse,
  });

  final ProductResponse productResponse;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final products = cubit.products;
    return MasonryGridView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: cubit.currentPage == cubit.lastPage
          ? products.length
          : products.length + 2,
      padding: AppPaddings.h25,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (_, index) {
        log('Products length: ${products.length}');
        if (index == products.length || index == products.length + 1) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12, left: 6, right: 6),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.white,
              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ProductWidget(
                    product: products.first,
                  ),
                ),
              ),
            ),
          );
        }
        final product = products[index]; //0, 1 [ 'a', 'b' ]
        return Padding(
          padding: const EdgeInsets.only(bottom: 12, left: 6, right: 6),
          child: GestureDetector(
            onTap: () => context
                .to(Pager.productDetails(context, product.slug!, product.id!)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ProductWidget(
                product: product,
              ),
            ),
          ),
        );
      },
    );
  }
}
