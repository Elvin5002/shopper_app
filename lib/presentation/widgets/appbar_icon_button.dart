import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/extensions/material_state_property_all_extension.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({
    super.key,
    this.onTap,
    this.backgroundColor,
    this.foregroundColor,
    required this.borderRadius,
    required this.icon,
  });

  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius borderRadius;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: icon,
      style: ButtonStyle(
        backgroundColor: backgroundColor.toMspAll,
        foregroundColor: foregroundColor.toMspAll,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ).toMspAll,
      ),
    );
  }
}
