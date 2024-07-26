import 'package:flutter/material.dart';
import '../../../../utils/extensions/context_extensions.dart';
import '../../../../utils/extensions/navigation_extension.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/helpers/pager.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_radiuses.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.fullHeight * 0.1,
      width: context.fullWidth * 0.38,
      child: TextButton(
        onPressed: () => context.to(Pager.signIn),
        style: TextButton.styleFrom(
          backgroundColor: AppColors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadiuses.a20,
            side: BorderSide(color: AppColors.black, width: 1),
          ),
        ),
        child: const Text(
          AppStrings.signInButtonText,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
