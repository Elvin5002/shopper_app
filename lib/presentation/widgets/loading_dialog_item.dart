import 'package:flutter/material.dart';

class LoadingDialogItem extends StatelessWidget {
  const LoadingDialogItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      width: 48,
      child: CircularProgressIndicator(),
    );
  }
}
