import 'package:flutter/material.dart';
import 'widgets/category_view.dart';
import 'widgets/color_view.dart';
import 'widgets/discount_view.dart';
import 'widgets/price_view.dart';
import 'widgets/rating_view.dart';
import '../../widgets/custom_appbar.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/extensions/sizedbox_extension.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Filter'),
      body: Padding(
        padding: AppPaddings.a40,
        child: Column(
          children: [
            const PriceView(),
            20.h,
            const ColorView(),
            20.h,
            const RatingView(),
            20.h,
            const CategoryView(),
            20.h,
            const DiscountView(),
          ],
        ),
      ),
    );
  }
}
