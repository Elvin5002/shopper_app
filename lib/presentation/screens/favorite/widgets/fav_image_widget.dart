import 'package:flutter/cupertino.dart';
import 'package:shopper_app/data/models/remote/products_response.dart'
    as result;
import 'package:shopper_app/utils/constants/endpoints.dart';

class FavImageWidget extends StatelessWidget {
  const FavImageWidget({super.key, required this.data});

  final result.Result data;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      '${Endpoints.baseUrl}${data.image!.image}',
      fit: BoxFit.cover,
      width: 325,
    );
  }
}
