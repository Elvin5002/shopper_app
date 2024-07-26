import 'description_reviews.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/presentation/screens/product_details/widgets/reviews_text_view.dart';

class DescriptionReviewsView extends StatefulWidget {
  const DescriptionReviewsView({super.key});

  @override
  State<DescriptionReviewsView> createState() => _DescriptionReviewsViewState();
}

class _DescriptionReviewsViewState extends State<DescriptionReviewsView> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h27,
      child: Column(
        children: [
          // const DescriptionReviews(
          //   icon: Icons.keyboard_arrow_down,
          //   title: AppStrings.description,
          // ),
          GestureDetector(
            onTap: () {
              setState(() {});
              isClicked = !isClicked;
            },
            child: DescriptionReviews(
              icon: isClicked
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              title: AppStrings.reviews,
            ),
          ),
          isClicked ? const ReviewsTextView() : const SizedBox.shrink()
        ],
      ),
    );
  }
}
