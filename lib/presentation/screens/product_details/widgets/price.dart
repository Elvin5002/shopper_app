import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/product_detail/product_detail_cubit.dart';
import '../../../../utils/constants/app_colors.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductDetailCubit>();
    return StreamBuilder(
        stream: cubit.productDetailStream,
        builder: (context, snapshot) {
          return Text(
            '\$${snapshot.data?.totalPrice ?? 0}',
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppColors.priceColor,
            ),
          );
        });
  }
}
