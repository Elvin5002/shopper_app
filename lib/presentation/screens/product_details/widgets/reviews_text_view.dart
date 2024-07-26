import 'package:flutter/material.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/reviews_text.dart';

class ReviewsTextView extends StatelessWidget {
  const ReviewsTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ReviewsText(
          userName: AppStrings.userName1,
          reviewsText: AppStrings.reviewsText1,
          image: AppAssets.userName1,
        ),
        ReviewsText(
          userName: AppStrings.userName2,
          reviewsText: AppStrings.reviewsText2,
          image: AppAssets.userName2,
        ),
      ],
    );
  }
}
