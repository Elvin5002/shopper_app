import 'bottom_sheet_sizes.dart';
import 'bottom_sheet_colors.dart';
import 'total_product_count.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/painter.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/total_price.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/bottom_sheet_button.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const BottomSheetSizes(),
          20.h,
          const BottomSheetColors(),
          20.h,
          const TotalProductCount(),
          18.h,
          const Painter(),
          22.h,
          const TotalPrice(),
          25.h,
          const BottomSheetButton(),
          8.h,
        ],
      ),
    );
  }
}
