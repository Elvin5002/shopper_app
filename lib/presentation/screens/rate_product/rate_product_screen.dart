import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/cubits/rate/rate_product_cubit.dart';
import 'package:shopper_app/presentation/widgets/custom_elevated_button.dart';
import 'package:shopper_app/presentation/widgets/custom_text_form_field.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../../../utils/helpers/pager.dart';

class RateProductScreen extends StatelessWidget {
  const RateProductScreen({super.key, required this.productId});

  final int productId;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RateProductCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text("Rate Product")),
      body: Padding(
        padding: AppPaddings.h40,
        child: Column(
          children: [
            30.h,
            Center(
              child: RatingBar.builder(
                initialRating: cubit.ratingSubject.value,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: AppPaddings.h6,
                itemBuilder: (context, _) => SvgPicture.asset(AppAssets.star),
                onRatingUpdate: (rating) {
                  cubit.updateRating(rating);
                },
              ),
            ),
            30.h,
            CustomTextFormField(
              fillColor: AppColors.greyReviewTime.withOpacity(0.4),
              hintText: AppStrings.ratingFieldHint,
              maxLines: 7,
              controller: cubit.rateController,
              maxLength: 200,
              enableCounter: true,
            ),
            const Spacer(),
            Expanded(
              child: Container(
                margin: AppPaddings.v16,
                alignment: Alignment.bottomCenter,
                width: context.fullWidth,
                child: SizedBox(
                  width: context.fullWidth,
                  child: BlocListener<RateProductCubit, RateProductState>(
                    listener: (context, state) {
                      if (state is RateProductSuccess) {
                        //TODO: Change Destination Page later
                        context.removeAll(Pager.home);
                      } else if (state is RateProductLoading) {
                        const Center(
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                    },
                    child: CustomElevatedButton(onPressed: () {
                      cubit.rateProduct(productId: productId);
                    }, child: BlocBuilder<RateProductCubit, RateProductState>(
                      builder: (context, state) {
                        if (state is RateProductLoading) {
                          return const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                              color: AppColors.blackText,
                            ),
                          );
                        }
                        if (state is RateProductSuccess) {
                          context.to(Pager.home);
                        }
                        return const Text(
                          AppStrings.submitReview,
                          style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        );
                      },
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
