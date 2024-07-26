import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';

class DescriptionReviews extends StatelessWidget {
  const DescriptionReviews({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.blackText,
        ),
      ),
      trailing: Icon(
        icon,
        size: 24,
        color: AppColors.blackText,
      ),
    );
  }
}
