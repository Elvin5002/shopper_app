import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/home/home_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'product_grid_widget.dart';

class ProductGridViewBuilder extends StatelessWidget {
  const ProductGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Expanded(
      child: StreamBuilder(
          initialData: cubit.productsSubject.valueOrNull,
          stream: cubit.productsSubject.stream,
          builder: (context, snapshot) {
            final products =
                cubit.isEmpty ? cubit.filteredProducts : cubit.products;

            return GridView.builder(
              shrinkWrap: true,
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: index % 2 != 0 ? AppPaddings.t15 : AppPaddings.b15,
                  child: ProductGridWidget(product: products[index]),
                );
              },
            );
          }),
    );
  }
}
