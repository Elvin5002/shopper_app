import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/screens/verification/widgets/otp_input_view.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../../../utils/constants/app_strings.dart';
import '../auth/sign_up/widgets/sign_up_action_buttons_view.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final loginCubit = context.read<LoginCubit>();

    return Scaffold(
        appBar: const CustomAppBar(title: AppStrings.verificationPageTitle),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(children: [
            30.h,
            const Text(
              AppStrings.verificationPageSubTitle,
            ),
            40.h,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OtpInputView(),
                OtpInputView(),
                OtpInputView(),
                OtpInputView(),
              ],
            ),
            20.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(AppStrings.verificationReceiveCode),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppStrings.verificationCode,
                    style: TextStyle(color: AppColors.buttonColorLightGreen),
                  ),
                )
              ],
            ),
            270.h,
            const SignUpActionButtonsView()
          ]),
        ));
  }
}
