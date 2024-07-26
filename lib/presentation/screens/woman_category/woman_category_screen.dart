import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/home/home_cubit.dart';
import 'package:shopper_app/utils/constants/app_colors.dart';
import 'package:shopper_app/utils/constants/app_strings.dart';
import 'package:shopper_app/utils/constants/app_paddings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopper_app/presentation/widgets/custom_appbar.dart';
import 'package:shopper_app/presentation/screens/woman_category/widgets/product_list_view_builder.dart';
import 'package:shopper_app/presentation/screens/woman_category/widgets/product_grid_view_builder.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../account_edit/widgets/custom_input.dart';

class WomanCategoryScreen extends StatelessWidget {
  const WomanCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Scaffold(
      appBar: const CustomAppBar(title: AppStrings.woman),
      body: Padding(
          padding: AppPaddings.r24 + AppPaddings.l9,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              bool buttonView = true;
              if (state is HomeGridState) {
                buttonView = state.buttonView;
              }
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.sliders,
                        size: 18,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              cubit.listToGrid();
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.tableCellsLarge,
                              size: 18,
                              color: buttonView ? AppColors.green : null,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cubit.gridToList();
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.bars,
                              size: 18,
                              color: !buttonView ? AppColors.green : null,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomInput(
                    title: 'Search product',
                    onChanged: (v) => cubit.filterProducts(v),
                  ),
                  16.h,
                  buttonView
                      ? const ProductGridViewBuilder()
                      : const ProductListViewBuilder(),
                ],
              );
            },
          )),
    );
  }
}
