import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/cubits/payment/payment_cubit.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/custom_text_form_field.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentCubit = context.read<PaymentCubit>();
    return Column(
      children: [
        15.h,
        CustomTextFormField(
          title: "Card name",
          controller: paymentCubit.controllers['cardName'],
        ),
        15.h,
        CustomTextFormField(
          title: "Card Number",
          controller: paymentCubit.controllers['cardNumber'],
        ),
        15.h,
        Row(
          children: [
            Expanded(
                child: CustomTextFormField(
              title: "Expires",
              controller: paymentCubit.controllers['expiryDate'],
            )),
            15.w,
            Expanded(
              child: CustomTextFormField(
                title: "CVV",
                obscureText: true,
                controller: paymentCubit.controllers['cvv'],
              ),
            ),
          ],
        ),
        15.h,
        Row(
          children: [
            SvgPicture.asset(AppAssets.checkIcon),
            30.w,
            Text(
              AppStrings.setAsDefault,
              style: AppTextStyles.accept,
            )
          ],
        )
      ],
    );
  }
}
