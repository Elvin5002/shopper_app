import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import 'widgets/custom_introduction_title.dart';
import 'widgets/sign_in_button.dart';
import 'widgets/sign_up_button.dart';
import '../../../utils/constants/app_strings.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            10.h,
            const IntroductionTitle(),
            35.h,
            const Padding(
              padding: AppPaddings.l42,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppStrings.subText,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            85.h,
            Padding(
              padding: AppPaddings.l42,
              child: Row(children: [
                const SignUpButton(),
                20.w,
                const SignInButton(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
