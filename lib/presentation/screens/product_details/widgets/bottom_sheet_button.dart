import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/extensions/material_state_property_all_extension.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/add_to_cart_text.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: AppColors.buttonColorLightGreen.toMspAll,
        ),
        onPressed: () {},
        child: const Center(child: AddToCartText(color: AppColors.white)),
      ),
    );
  }
}
