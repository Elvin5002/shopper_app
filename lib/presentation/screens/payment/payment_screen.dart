import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/presentation/screens/payment/widgets/accepted_cards.dart';
import 'package:shopper_app/presentation/screens/payment/widgets/amount_details.dart';
import 'package:shopper_app/presentation/screens/payment/widgets/card_view.dart';
import 'package:shopper_app/presentation/widgets/custom_elevated_button.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
          style: AppTextStyles.appBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppPaddings.h40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                30.h,
                const CardView(),
                15.h,
                AcceptedCards(),
                15.h,
                const AmountDetails(
                  amount: '339',
                ),
              ],
            ),
            CustomElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  height: 33,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.placeOrder,
                        style: AppTextStyles.accept,
                      ),
                      SvgPicture.asset(
                        AppAssets.arrowRight,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
