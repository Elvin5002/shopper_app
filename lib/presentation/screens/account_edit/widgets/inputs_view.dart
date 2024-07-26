import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../cubits/update%20profile/update_profile_cubit.dart';
import 'custom_button.dart';
import 'custom_input.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/extensions/navigation_extension.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../../../../utils/helpers/pager.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UpdateProfileCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomInput(
                prefix: FontAwesomeIcons.userAstronaut,
                title: AppStrings.firstName,
                controller: cubit.controllers['firstName'],
              ),
            ),
            10.w,
            Expanded(
              child: CustomInput(
                prefix: FontAwesomeIcons.userAstronaut,
                title: AppStrings.lastName,
                controller: cubit.controllers['lastName'],
              ),
            ),
          ],
        ),
        10.h,
        CustomInput(
          title: AppStrings.username,
          prefix: FontAwesomeIcons.userAstronaut,
          controller: cubit.controllers['username'],
        ),
        10.h,
        CustomInput.datePicker(
          title: AppStrings.birthDate,
          controller: cubit.controllers['birthDay'],
          suffix: FontAwesomeIcons.angleDown,
        ),
        10.h,
        CustomInput(
          title: AppStrings.bio,
          prefix: FontAwesomeIcons.noteSticky,
          height: 80,
          controller: cubit.controllers['bio'],
        ),
        5.h,
        const Text(AppStrings.gender),
        10.h,
        StreamBuilder<Object>(
          stream: cubit.isSelect.stream,
          builder: (context, snapshot) {
            return Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: AppStrings.male,
                    onTap: (){
                      cubit.isSelect.value = !cubit.isSelect.value;
                    },
                    color: cubit.isSelect.value ? AppColors.green: AppColors.white,
                    borderColor: cubit.isSelect.value? AppColors.transparent: AppColors.gray,
                )),
                20.w,
                Expanded(
                  child: CustomButton(
                    title: AppStrings.female,
                    onTap: (){
                      cubit.isSelect.value = !cubit.isSelect.value;
                    },
                    color: cubit.isSelect.value? AppColors.white: AppColors.green,
                    borderColor: cubit.isSelect.value? AppColors.gray: AppColors.transparent,
                )),
              ],
            );
          }
        ),
        40.h,
        BlocListener<UpdateProfileCubit, UpdateProfileState>(
          listener: (context, state) {
            if(state is UpdateProfileSuccess){
              context.removeAll(Pager.profile);
            }
          },
          child: CustomButton(
            title: AppStrings.update,
            onTap: () {
              cubit.update();
            },
          ),
        )
      ],
    );
  }
}
