import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/change_password/change_password_cubit.dart';
import 'package:shopper_app/presentation/widgets/custom_elevated_button.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/dialogs/dialogs.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import 'package:shopper_app/utils/helpers/pager.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_text_form_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final changePasswordCubit = context.read<ChangePasswordCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppStrings.createNewPasswordTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: AppPaddings.h25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                52.h,
                const Text(AppStrings.createNewPasswordSubTitle),
                40.h,
                Form(
                  child: Column(
                    children: [
                      CustomTextFormField(
                        title: AppStrings.generateOldPasswordInputTitle,
                        obscureText: true,
                        controller:
                            changePasswordCubit.controllers['oldPassword'],
                      ),
                      CustomTextFormField(
                        title: AppStrings.generateNewPasswordInputTitle,
                        obscureText: true,
                        controller: changePasswordCubit.controllers['password'],
                      ),
                      CustomTextFormField(
                        title: AppStrings.generateConfirmPasswordInputTitle,
                        obscureText: true,
                        controller:
                            changePasswordCubit.controllers['confirmPassword'],
                      )
                    ],
                  ),
                ),
                270.h,
                SizedBox(
                  width: context.fullWidth,
                  child: CustomElevatedButton(
                    onPressed: () {
                      changePasswordCubit.update();
                    },
                    child:
                        BlocListener<ChangePasswordCubit, ChangePasswordState>(
                      listener: (context, state) {
                        if (state is ChangePasswordLoading) {
                          Dialogs.loading();
                        } else if (state is ChangePasswordSuccess) {
                          context.back();
                          Dialogs.success(
                            afterRun: () => context.replace(Pager.home),
                          );
                        } else if (state is ChangePasswordFailure) {
                          context.back();
                          Dialogs.error(afterRun: () => context.back());
                        }
                      },
                      child: const Text(AppStrings.savePassword),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
