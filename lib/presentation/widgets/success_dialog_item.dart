import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DefaultDialogItem extends StatelessWidget {
  const DefaultDialogItem({
    super.key,
    required this.lottiePath,
  });

  final String lottiePath;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      lottiePath,
      height: 100,
      width: 100,
    );
  }
}
