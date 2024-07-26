import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/favorite/favorite_cubit.dart';
import '../../../../../data/models/remote/products_response.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../../utils/extensions/sizedbox_extension.dart';
import '../../../../widgets/custom_appbar.dart';
import '../../../../widgets/deletable_widget.dart';
import '../../../favorite/widgets/fav_image_widget.dart';
import '../favorite_icon_button.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  @override
  void initState() {
    context.read<FavoriteCubit>().getFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavoriteCubit>();
    return Column(
      children: [
        const CustomAppBar.noLeading(title: AppStrings.favorites),
        StreamBuilder<List<Result>>(
          initialData: const [],
          stream: cubit.wishListSubject.stream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final products = snapshot.data ?? [];
            return Expanded(
              child: RefreshIndicator(
                onRefresh: () async => cubit.getFavorites(),
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) {
                    final product = products[index];
                    return DeletableWidget(
                      slidableKey: product,
                      onDelete: (_) => cubit.addToFavorites(product),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 125,
                            width: 125,
                            child: FavImageWidget(data: product),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(product.name!),
                                30.h,
                                Row(
                                  children: [
                                    Text("${product.totalPrice}"),
                                    FavoriteIconButton(product: product),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
