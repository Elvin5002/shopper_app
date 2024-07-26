import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/login/login_cubit.dart';
import '../../../../../utils/constants/app_assets.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_radiuses.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/extensions/navigation_extension.dart';
import '../../../../../utils/helpers/pager.dart';
import '../../../../widgets/custom_text_button.dart';
import '../../../../widgets/rounded_button.dart';

class SignInActionButtonsView extends StatelessWidget {
  const SignInActionButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextButton(
          text: AppStrings.signUp,
          onPressed: () => context.replace(Pager.signUp),
        ),
        BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            log(state.runtimeType.toString());
            if (state is LoginLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (_) => Center(
                  child: Container(
                    padding: AppPaddings.a24,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: AppRadiuses.a10,
                    ),
                    child: const SizedBox(
                      height: 48,
                      width: 48,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              );
            } else if (state is LoginSuccess) {
              context.removeAll(Pager.home);
            } else if (state is LoginFailure) {
              context.back();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: AppColors.error,
                  margin: AppPaddings.a24,
                  shape: RoundedRectangleBorder(borderRadius: AppRadiuses.a10),
                  behavior: SnackBarBehavior.floating,
                  content: Text('Error occured while trying to login'),
                ),
              );
            }
          },
          child: RoundedIconButton.svg(
            svgAssetName: AppAssets.arrowRight,
            onPressed: () => loginCubit.login(),
          ),
        ),
      ],
    );
  }
}
