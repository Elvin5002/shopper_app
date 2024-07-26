import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../cubits/favorite/favorite_cubit.dart';
import '../../../../data/models/remote/products_response.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../widgets/custom_elevated_button.dart';
import 'add_to_cart_text.dart';
import 'modal_bottom_sheet.dart';

class AddToCartButton extends StatelessWidget {
  final Result product;
  const AddToCartButton({
    super.key,
    required this.product,
  });
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavoriteCubit>();
    return CustomElevatedButton(
      onPressed: () {
        cubit.addToFavorites(product);
        showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) {
              return const ModalBottomSheet();
            });
      },
      child: const AddToCartText(color: AppColors.blackText),
    );
  }
}
