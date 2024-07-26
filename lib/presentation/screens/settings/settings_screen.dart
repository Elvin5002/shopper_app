import 'package:flutter/material.dart';
import 'package:shopper_app/utils/helpers/pager.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/presentation/screens/settings/widgets/settings_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Settings',
        ),
        body: Padding(
          padding: AppPaddings.h10,
          child: Column(
            children: [
              SettingsButton(
                title: AppStrings.settingsButtonLang,
                iconPath: 'assets/svg/lang.svg',
                onPressed: () => context.to(Pager.language),
              ),
              SettingsButton(
                title: AppStrings.settingsButtonTerms,
                iconPath: 'assets/svg/terms.svg',
                onPressed: () {},
              ),
              SettingsButton(
                title: AppStrings.settingsButtonPrivacy,
                iconPath: 'assets/svg/privacy.svg',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
