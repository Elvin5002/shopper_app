import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../../utils/constants/app_text_styles.dart';
import 'package:shopper_app/cubits/address/address_cubit.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class TextInputCard extends StatelessWidget {
  const TextInputCard({super.key});
  @override
  Widget build(BuildContext context) {
    final addressCubit = context.read<AddressCubit>();
    return Column(
      children: [
        15.h,
        CustomTextFormField(
          title: "Address name",
          controller: addressCubit.controllers['addressName'],
        ),
        15.h,
        CustomTextFormField(
          title: "Name",
          controller: addressCubit.controllers['name'],
        ),
        15.h,
        CustomTextFormField(
          title: "Phone Number",
          controller: addressCubit.controllers['phoneNumber'],
        ),
        15.h,
        Row(
          children: [
            Expanded(
                child: CustomTextFormField(
              title: "City",
              controller: addressCubit.controllers['city'],
            )),
            15.w,
            Expanded(
              child: CustomTextFormField(
                title: "State",
                controller: addressCubit.controllers['state'],
              ),
            ),
            15.w,
            Expanded(
              child: CustomTextFormField(
                title: "Zip Code",
                controller: addressCubit.controllers['zipCode'],
              ),
            ),
          ],
        ),
        15.h,
        Row(
          children: [
            SvgPicture.asset(AppAssets.checkIcon),
            30.w,
            Text(
              AppStrings.setAsDefault,
              style: AppTextStyles.accept,
            )
          ],
        ),
      ],
    );
  }
}
