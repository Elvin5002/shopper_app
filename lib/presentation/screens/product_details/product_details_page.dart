import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/price.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/extensions/sizedbox_extension.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_bottom_navbar.dart';
import 'widgets/description_reviews_view.dart';
import 'widgets/price_and_add_to_cart.dart';
import 'widgets/product_detail_view.dart';

class ProductDetailsPage extends StatelessWidget {
  final int id;
  const ProductDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar.withSearchIcon(),
      body: ListView(
        children: [
          const ProductDetailView(),
          const DescriptionReviewsView(),
          30.h,
        ],
      ),
      // floatingActionButton: PriceAndAddToCart(id: id),
      floatingActionButton: Padding(
        padding: AppPaddings.h15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Price(),
            16.w,
            Expanded(
              child: SizedBox(
                height: 33,
                child: FloatingActionButton(
                  backgroundColor: AppColors.buttonColorLightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  onPressed: () {},
                  child: const Text('Add to Cart'),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
