import 'package:flutter/material.dart';

import 'package:shopper_app/data/models/remote/products_response.dart'
    as result;
import 'package:shopper_app/utils/constants/endpoints.dart';

class CartImageWidget extends StatelessWidget {
  final result.Result data;
  const CartImageWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      '${Endpoints.baseUrl}${data.image!.image}',
      fit: BoxFit.cover,
      width: 325,
    );
  }
}
