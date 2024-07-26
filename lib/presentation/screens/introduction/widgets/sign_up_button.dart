import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_radiuses.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/utils/helpers/pager.dart';
import '../../../../utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.fullHeight * 0.1,
      width: context.fullWidth * 0.38,
      child: ElevatedButton(
        onPressed: () => context.to(Pager.signUp),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadiuses.a20,
          ),
        ),
        child: const Text(
          AppStrings.signUpButtonText,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
