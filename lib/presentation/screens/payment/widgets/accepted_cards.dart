import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopper_app/utils/constants/app_assets.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_text_styles.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

class AcceptedCards extends StatelessWidget {
  AcceptedCards({super.key});
  final List<String> items = [
    AppAssets.visaCard,
    AppAssets.masterCard,
    AppAssets.amexPay,
    AppAssets.aliPay,
    AppAssets.paypal
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.fullWidth,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.weAccept,
            style: AppTextStyles.accept,
          ),
          15.h,
          SizedBox(
            width: context.fullWidth,
            height: 40,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (_, i) => Padding(
                      padding: AppPaddings.r10,
                      child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: AppColors.unselectedCategoryButton)),
                          child: Center(child: SvgPicture.asset(items[i]))),
                    )),
          )
        ],
      ),
    );
  }
}
