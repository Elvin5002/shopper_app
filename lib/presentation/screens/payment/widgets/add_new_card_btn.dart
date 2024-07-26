import 'package:flutter/material.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/utils/helpers/pager.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_radiuses.dart';

class AddNewCardBtn extends StatelessWidget {
  const AddNewCardBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.replace(Pager.addNewCard);
      },
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
