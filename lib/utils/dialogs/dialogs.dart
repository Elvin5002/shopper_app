import 'package:flutter/material.dart';

import '../../presentation/app.dart';
import '../../presentation/widgets/loading_dialog_item.dart';
import '../../presentation/widgets/success_dialog_item.dart';
import '../constants/app_assets.dart';
import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_radiuses.dart';

class Dialogs {
  Dialogs._();

  static void _showDialog({
    required Widget child,
    void Function()? afterRun,
  }) async {
    await showDialog(
      context: navKey.currentState!.context,
      barrierDismissible: false,
      builder: (_) => Center(
        child: Container(
          padding: AppPaddings.a24,
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: AppRadiuses.a10,
          ),
          child: child,
        ),
      ),
    );
    if (afterRun != null) {
      await Future.delayed(const Duration(seconds: 1));
      afterRun();
    }
  }

  static void loading({void Function()? afterRun}) => _showDialog(
        child: const LoadingDialogItem(),
        afterRun: afterRun,
      );

  static void success({void Function()? afterRun}) => _showDialog(
          child: const DefaultDialogItem(
        lottiePath: AppAssets.successLottie,
      ));
      
  static void error({void Function()? afterRun}) => _showDialog(
        child: const DefaultDialogItem(
          lottiePath: AppAssets.successLottie,
        ),
        afterRun: afterRun,
      );
}
