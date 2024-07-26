import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/home/home_cubit.dart';
import 'package:shopper_app/utils/extensions/context_extensions.dart';
import 'package:shopper_app/presentation/screens/woman_category/widgets/product_list_widget.dart';

class ProductListViewBuilder extends StatelessWidget {
  const ProductListViewBuilder({super.key});

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
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductListWidget(product: products[index]);
              },
            );
          }),
    );
  }
}
