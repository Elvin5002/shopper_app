import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/login/login_cubit.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_text_button.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'widgets/sign_in_action_buttons_view.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(title: AppStrings.signIn),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              30.h,
              CustomTextFormField(
                title: AppStrings.email,
                keyboardType: TextInputType.emailAddress,
                controller: loginCubit.controllers['email'],
              ),
              20.h,
              CustomTextFormField(
                title: AppStrings.password,
                obscureText: true,
                controller: loginCubit.controllers['password'],
              ),
              30.h,
              CustomTextButton(
                onPressed: () {},
                text: AppStrings.forgotpassword,
              ),
              270.h,
              const SignInActionButtonsView()
            ],
          ),
        ),
      ),
    );
  }
}
