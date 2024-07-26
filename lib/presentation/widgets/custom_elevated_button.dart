import 'package:flutter/material.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/extensions/material_state_property_all_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });
  final void Function() onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: AppColors.buttonColorLightGreen.toMspAll,
        minimumSize: Size(context.fullWidth - 32, 33).toMspAll,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
        ).toMspAll
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
