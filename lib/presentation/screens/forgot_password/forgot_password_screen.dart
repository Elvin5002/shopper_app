import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../../../utils/constants/app_assets.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/rounded_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppStrings.forgotPasswordTitle),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            30.h,
            const Text(AppStrings.forgotPasswordSubTitle),
            20.h,
            const CustomTextFormField(
              title: AppStrings.email,
            ),
            270.h,
            const Row(
              children: [
                Spacer(),
                RoundedIconButton.svg(svgAssetName: AppAssets.arrowRight)
              ],
            )
          ],
        ),
      ),
    );
  }
}
