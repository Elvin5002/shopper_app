import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/data/models/remote/payment_response.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_radiuses.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.paymentResponse});
  final PaymentResponse paymentResponse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 128,
        padding: AppPaddings.h20v10,
        decoration: BoxDecoration(
            color: AppColors.randomImageBackgroundColor,
            borderRadius: AppRadiuses.a10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.h,
            const Text(
              AppStrings.creditCard,
              style: AppTextStyles.creditCardTextStyle,
            ),
            30.h,
            Text(
              '****  ${paymentResponse.number.substring(12)}',
              style: AppTextStyles.creditCardTextStyle,
            ),
            25.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                paymentResponse.name == 'Mastercard'
                    ? SizedBox(
                        width: 25,
                        child: SvgPicture.asset(AppAssets.masterCard))
                    : SizedBox(
                        width: 25, child: SvgPicture.asset(AppAssets.visaCard)),
                Text(
                  paymentResponse.date,
                  style: AppTextStyles.creditCardTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
