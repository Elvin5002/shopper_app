import 'package:flutter/material.dart';

import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/navigation_extension.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../../../../utils/helpers/pager.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_rich_text.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'widgets/sign_up_action_buttons_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(title: AppStrings.createAnAccount),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.h40,
          child: Column(
            children: [
              30.h,
              const CustomTextFormField(
                title: AppStrings.username,
                keyboardType: TextInputType.name,
              ),
              20.h,
              const CustomTextFormField(
                title: AppStrings.phoneNumber,
                keyboardType: TextInputType.phone,
              ),
              20.h,
              const CustomTextFormField(
                title: AppStrings.email,
                keyboardType: TextInputType.emailAddress,
              ),
              20.h,
              const CustomTextFormField(
                title: AppStrings.password,
                obscureText: true,
              ),
              30.h,
               CustomRichText(
                firstText: AppStrings.bySigning,
                secondText: AppStrings.termsOfService,
                secondTextOnTap: (){
                  //Todo(Change destination page to terms or privacy)
                  context.to(Pager.signIn);
                },
                firstTextStyle: AppTextStyles.signUpFirstTextStyle,
                secondTextStyle: AppTextStyles.signUpSecondTextStyle,
              ),
              100.h,
              const SignUpActionButtonsView(),
            ],
          ),
        ),
      ),
    );
  }
}
