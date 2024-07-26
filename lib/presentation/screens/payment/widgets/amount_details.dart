import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';

import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class AmountDetails extends StatelessWidget {
  const AmountDetails({
    super.key,
    required this.amount,
  });
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.subTotal,
              style: AppTextStyles.subTotalShipping,
            ),
            Text(
              "\$$amount",
              style: AppTextStyles.accept,
            )
          ],
        ),
        10.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.shipping,
              style: AppTextStyles.subTotalShipping,
            ),
            Text(
              AppStrings.free,
              style: AppTextStyles.accept,
            ),
          ],
        ),
        15.h,
        const Divider(),
        15.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.total,
              style: AppTextStyles.accept,
            ),
            Text(
              "\$$amount",
              style: AppTextStyles.redAmount,
            ),
          ],
        ),
      ],
    );
  }
}
