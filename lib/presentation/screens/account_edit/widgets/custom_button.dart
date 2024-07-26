import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_radiuses.dart';
import '../../../../utils/extensions/context_extensions.dart';

class CustomButton extends StatelessWidget {
const CustomButton({ super.key, this.onTap, required this.title, this.color = AppColors.green, this.borderColor = Colors.transparent});

  final Function()? onTap;
  final String title;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 33,
        width: context.fullWidth,
        decoration: BoxDecoration(
          color: color,
          borderRadius: AppRadiuses.a10,
          border: Border.all(color: borderColor!),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}