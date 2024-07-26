import 'package:flutter/material.dart';

import '../../../../utils/constants/app_borders.dart';
import '../../../../utils/constants/app_text_styles.dart';

class SearchedItemsBox extends StatelessWidget {

  const SearchedItemsBox({
    super.key,
    required this.searchText,
  });
  final String searchText;
   @override
   Widget build(BuildContext context) {
       return Chip(
                  padding: const EdgeInsets.only(top: 8,right: 17,bottom: 8,left: 17),
                  label: Text(searchText,style: AppTextStyles.searchTextStyle,),
                  deleteIcon: const Icon( Icons.close,),
                  onDeleted: (){},
                  side: AppBorders.serachedBoxBorder,
                  );
  }
}
