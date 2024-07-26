import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class SettingsButton extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onPressed;

  const SettingsButton({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Padding(
            padding: AppPaddings.h20v10,
            child: Row(
              children: [
                SvgPicture.asset(
                  iconPath,
                  width: 24,
                  height: 24,
                ),
                20.w,
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                ),
              ],
            ),
          ),
        ),
        5.h,
        const Padding(
          padding: AppPaddings.h25,
          child: Opacity(
            opacity: 0.5,
            child: Divider(height: 0),
          ),
        ),
        5.h,
      ],
    );
  }
}
