import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopper_app/cubits/favorite/favorite_cubit.dart';

import '../../../../data/models/remote/products_response.dart' as api;
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/endpoints.dart';
import '../../../../utils/di/locator.dart';
import '../../../../utils/extensions/sizedbox_extension.dart';
import '../../../widgets/product_price.dart';
import 'favorite_icon_button.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });

  final api.Result product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColoredBox(
          color: AppColors.randomImageBackgroundColor,
          child: product.image?.image != null
              ? Image.network(
            '${Endpoints.baseUrl}${product.image?.image}',
          )
              : Image.asset('assets/png/hat.png'),
        ),
        Row(
          children: [
            Expanded(
              child: ColoredBox(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      5.w,
                      ProductPrice(
                        priceAmount:
                        product.totalPrice?.toStringAsFixed(2) ?? '',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BlocProvider(
              create: (context) => FavoriteCubit(locator()),
              child: FavoriteIconButton(product: product),
            ),
          ],
        ),
      ],
    );
  }
}
