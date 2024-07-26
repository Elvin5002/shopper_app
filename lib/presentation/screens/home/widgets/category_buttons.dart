import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/home/home_cubit.dart';
import 'package:shopper_app/utils/extensions/navigation_extension.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';
import 'package:shopper_app/utils/helpers/pager.dart';

import '../../../../data/models/remote/categories_model.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({
    super.key,
    required this.categoriesResponse,
  });

  final List<CategoriesResponse> categoriesResponse;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => 10.w,
        scrollDirection: Axis.horizontal,
        itemCount: categoriesResponse.length,
        padding: AppPaddings.h25,
        itemBuilder: (BuildContext context, int index) {
          final category = categoriesResponse[index];
          return category.name == null
              ? const SizedBox.shrink()
              : ElevatedButton(
                  onPressed: () {
                    // if (category.id != null) {
                    //   cubit.getProductsByCategoryId(category.id!);
                    // }
                    if (category.name == 'Women') {
                      context.to(Pager.womanCategory);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: category.id!.isEven
                        ? AppColors.selectedCategoryButton
                        : AppColors.unselectedCategoryButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(category.name!),
                );
        },
      ),
    );
  }
}
