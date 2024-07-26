import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/increment_decrement_box.dart';

class Increment extends StatelessWidget {
  const Increment({super.key});

  @override
  Widget build(BuildContext context) {
    return const IncrementDecrementBox(
      bgColor: AppColors.incrementColor,
      iconColor: AppColors.white,
      borderColor: AppColors.incrementColor,
      icon: FontAwesomeIcons.plus,
    );
  }
}
