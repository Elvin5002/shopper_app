import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';

class Painter extends StatelessWidget {
  const Painter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 8.0;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return const SizedBox(
              width: dashWidth,
              height: 0.7,
              child: DecoratedBox(
                decoration: BoxDecoration(color: AppColors.gray),
              ),
            );
          }),
        );
      },
    );
  }
}
