import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';

class SuggestedTitle extends StatelessWidget {
  const SuggestedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: AppPaddings.l42,
        child: Text(
          "Suggested",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
