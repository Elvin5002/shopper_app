import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/product_detail/product_detail_cubit.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../../../widgets/custom_loading.dart';
import 'carousel_image_slider.dart';
import 'product_type_text.dart';
import 'seller_name_review_number.dart';
import 'star_list.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductDetailCubit>();
    return StreamBuilder(
        stream: cubit.productDetailStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox(height: 400, child: CustomLoading());
          }
          final product = snapshot.data!;
          return Column(
            children: [
              CarouselImageSlider(product: product),
              15.h,
              Padding(
                padding: AppPaddings.h40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductTypeText(product: product),
                        StarList(product: product),
                      ],
                    ),
                    8.h,
                    SellerNameReviewNumber(product: product),
                    8.h,
                    Text(
                      product.description ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.gray,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
