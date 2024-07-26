import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/extensions/sizedbox_extension.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  const CustomEmptyWidget.notification({
    super.key,
    this.icon = AppAssets.notificationBodyIcon,
    this.text = "AppStrings.description",
  });

  const CustomEmptyWidget.cart({
    super.key,
    this.icon = AppAssets.card,
    this.text = AppStrings.emptyCard,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          120.h,
          SizedBox(
            width: 200,
            height: 200,
            child: SvgPicture.asset(icon),
          ),
          30.h,
          Text(
            text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
