import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/favorite/favorite_cubit.dart';
import 'package:shopper_app/data/models/remote/products_response.dart';
import '../../../../utils/constants/app_colors.dart';

class FavoriteIconButton extends StatelessWidget {
  final Result product;
  FavoriteIconButton({
    super.key,
    required this.product,
  });

  final _favoriteButtonController = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavoriteCubit>();
    return ValueListenableBuilder(
      valueListenable: _favoriteButtonController,
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.unselectedCategoryButton,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
            icon: Icon(
              value ? Icons.favorite : Icons.favorite_border_outlined,
              color: AppColors.favoriteIconButton,
            ),
            onPressed: () {
              cubit.addToFavorites(product);
              _favoriteButtonController.value =
                  !_favoriteButtonController.value;
            },
          ),
        );
      },
    );
  }
}
