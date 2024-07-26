import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_radiuses.dart';

class AddNewAddressButton extends StatelessWidget {
  const AddNewAddressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: AppRadiuses.a10,
            border: Border.all(
              width: 2,
              color: AppColors.unselectedCategoryButton,
            )),
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
