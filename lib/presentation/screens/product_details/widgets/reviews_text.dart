import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';

class ReviewsText extends StatelessWidget {
  const ReviewsText(
      {super.key,
      required this.userName,
      required this.reviewsText,
      required this.image});
  final String userName;
  final String reviewsText;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      child: ClipOval(
                          child: SvgPicture.asset(
                    image,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ))),
                  15.w,
                  Text(
                    userName,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              // const StarList(),
            ],
          ),
          10.h,
          Text(
            reviewsText,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.blackText,
            ),
          ),
          10.h,
          const Text(
            AppStrings.reviewTime,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              color: AppColors.greyReviewTime,
            ),
          ),
          15.h,
        ],
      ),
    );
  }
}
