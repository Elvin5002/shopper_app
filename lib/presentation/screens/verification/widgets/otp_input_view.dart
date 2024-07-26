import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';

class OtpInputView extends StatelessWidget {
  const OtpInputView({super.key});
  // late bool isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.0,
      height: 64.0,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide:
                const BorderSide(color: AppColors.buttonColorLightGreen),
          ),
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
