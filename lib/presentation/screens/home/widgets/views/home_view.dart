import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/home/home_cubit.dart';
import '../../../../../utils/extensions/sizedbox_extension.dart';
import '../../../../widgets/custom_appbar.dart';
import '../category_button_builder.dart';
import '../product_grid_builder.dart';
import '../scrollable_image.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Column(
      children: [
        const CustomAppBar.withSearchIcon(),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => cubit
              ..getCategories()
              ..getProducts(),
            child: SingleChildScrollView(
              controller: cubit.scrollController,
              child: Column(
                children: [
                  20.h,
                  const ScrollableImage(),
                  20.h,
                  const CategoryButtonsBuilder(),
                  20.h,
                  const ProductGridBuilder(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
