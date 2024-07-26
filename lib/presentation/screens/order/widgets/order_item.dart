import 'package:flutter/material.dart';
import 'package:shopper_app/utils/extensions/sizedbox_extension.dart';

import '../../../../data/models/remote/products_response.dart' as product;
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_radiuses.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/endpoints.dart';
import '../../../widgets/custom_elevated_button.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.order,
  });

  final product.Result order;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: AppRadiuses.a20,
          child: ColoredBox(
              color: AppColors.randomImageBackgroundColor,
              child: Image.network(
                '${Endpoints.baseUrl}${order.image?.image}',
                // width: 120,
                height: 180,
              )),
        ),
        16.w,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.name ?? '',
                style: const TextStyle(fontSize: 14),
              ),
              8.h,
              Row(
                children: [
                  const Text('x1', style: TextStyle(fontSize: 14)),
                  16.w,
                  Text('\$${order.totalPrice}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      )),
                ],
              ),
              16.h,
              Row(
                children: [
                  Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              16.h,
              CustomElevatedButton(
                onPressed: () {},
                child: const Text(
                  AppStrings.viewOrder,
                  style: TextStyle(
                    color: AppColors.blackText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
