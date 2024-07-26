import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/home/home_cubit.dart';
import '../../../widgets/masonry_grid_view_builder.dart';
import '../../../widgets/shimmer/products_shimmer_loading.dart';

class ProductGridBuilder extends StatelessWidget {
  const ProductGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return StreamBuilder(
      initialData: cubit.productsSubject.valueOrNull,
      stream: cubit.productsSubject.stream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const ProductsShimmerLoading();
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return MasonryGridViewBuilder(productResponse: snapshot.data!);
      },
    );
  }
}
