import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_colors.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    this.onPressed,
    this.icon,
    this.fixedSize = const Size.square(60),
    this.backgroundColor = AppColors.buttonColorLightGreen,
  })  : isChildSvg = false,
        svgAssetName = null;

  const RoundedIconButton.svg({
    super.key,
    this.onPressed,
    required this.svgAssetName,
    this.fixedSize = const Size.square(60),
    this.backgroundColor = AppColors.buttonColorLightGreen,
  })  : isChildSvg = true,
        icon = null;

  final void Function()? onPressed;
  final bool isChildSvg;
  final IconData? icon;
  final String? svgAssetName;
  final Size? fixedSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: fixedSize,
      ),
      icon: isChildSvg
          ? SvgPicture.asset(
              svgAssetName!,
            )
          : Icon(icon),
    );
  }
}
