import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../../../utils/constants/app_assets.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/rounded_button.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: AppStrings.createNewPasswordTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            52.h,
            const Text(AppStrings.createNewPasswordSubTitle),
            40.h,
            const Form(
              child: Column(
                children: [
                  CustomTextFormField(
                    title: AppStrings.passwordInputTitle,
                    obscureText: true,
                  ),
                  CustomTextFormField(
                    title: AppStrings.confirmPasswordInputTitle,
                    obscureText: true,
                  )
                ],
              ),
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
