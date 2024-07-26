import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_assets.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/extensions/navigation_extension.dart';
import '../../../../../utils/helpers/pager.dart';
import '../../../../widgets/custom_text_button.dart';
import '../../../../widgets/rounded_button.dart';

class SignUpActionButtonsView extends StatelessWidget {
  const SignUpActionButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextButton(
          text: AppStrings.logIn,
          onPressed: () => context.to(Pager.signIn),
        ),
        const RoundedIconButton.svg(svgAssetName: AppAssets.arrowRight)
      ],
    );
  }
}
