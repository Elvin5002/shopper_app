import 'package:flutter/material.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import '../../widgets/custom_bottom_navbar.dart';
import '../../widgets/custom_empty_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: const CustomAppBar(title: AppStrings.notificationPageTitle),
      body: const CustomEmptyWidget.notification(
        text: AppStrings.notificationText,
        icon: AppAssets.notificationBodyIcon,
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
