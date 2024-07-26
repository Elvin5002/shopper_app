import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/increment_decrement_box.dart';

class Decrement extends StatelessWidget {
  const Decrement({super.key});

  @override
  Widget build(BuildContext context) {
    return const IncrementDecrementBox(
      bgColor: AppColors.white,
      iconColor: AppColors.gray,
      borderColor: AppColors.gray,
      icon: FontAwesomeIcons.circleMinus,
    );
  }
}
