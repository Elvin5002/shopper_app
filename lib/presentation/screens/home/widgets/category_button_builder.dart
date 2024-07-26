import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/home/home_cubit.dart';
import '../../../../data/models/remote/categories_model.dart';
import '../../../widgets/shimmer/categories_shimmer_loading.dart';
import 'category_buttons.dart';

class CategoryButtonsBuilder extends StatelessWidget {
  const CategoryButtonsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return StreamBuilder<List<CategoriesResponse>>(
      stream: cubit.categoriesSubject.stream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CategoriesShimmerLoading();
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return CategoryButtons(categoriesResponse: snapshot.data!);
      },
    );
  }
}
