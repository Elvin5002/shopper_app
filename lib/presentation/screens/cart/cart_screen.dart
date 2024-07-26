import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubits/favorite/favorite_cubit.dart';
import '../../../data/models/remote/products_response.dart';
import '../../../utils/constants/app_constants.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/extensions/context_extensions.dart';
import '../../../utils/extensions/sizedbox_extension.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_empty_widget.dart';
import 'widget/cart_image_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final FavoriteCubit cubit;

  @override
  void initState() {
    cubit = context.read<FavoriteCubit>();
    cubit.getFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final favoriteCubit = context.read<FavoriteCubit>();
    return Column(
      children: [
        const CustomAppBar.noLeading(title: AppStrings.cart),
        StreamBuilder<List<Result>>(
            stream: favoriteCubit.wishListSubject.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return SizedBox(
                  height: context.fullHeight -
                      kToolbarHeight -
                      AppConstants.customBottomNavBarHeight -
                      context.statusBarHeight,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (snapshot.hasData) {
                final products = snapshot.data ?? [];
                return products.isEmpty
                    ? const CustomEmptyWidget.cart()
                    : Expanded(
                        child: SizedBox(
                          child: ListView.builder(
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                final datas = products[index];
                                return Row(
                                  children: [
                                    SizedBox(
                                      height: 125,
                                      width: 125,
                                      child: CartImageWidget(data: datas),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(datas.name!),
                                          30.h,
                                          Text("${datas.totalPrice}"),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                      );
              }
              return const SizedBox.shrink();
            }),
      ],
    );
  }
}
