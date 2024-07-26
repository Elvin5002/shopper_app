import 'package:flutter/material.dart';
import 'searched_items_box.dart';
import '../../../widgets/rounded_button.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class SearchedBox extends StatelessWidget {

  const SearchedBox({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.recentSearch,style: AppTextStyles.searchTextStyle,),
              RoundedIconButton.svg(svgAssetName: AppAssets.recycleBinIcon,backgroundColor: AppColors.white,)
            ],
          ),
           Wrap(
            spacing: 20,
            runSpacing: 18,
            children: [
                SearchedItemsBox(searchText: AppStrings.tops),
                SearchedItemsBox(searchText: AppStrings.loungewear),
                SearchedItemsBox(searchText: AppStrings.dresses),
                SearchedItemsBox(searchText: AppStrings.legging),
                SearchedItemsBox(searchText: AppStrings.skirts),
            ],
           ),
         ],
       );
  }
}