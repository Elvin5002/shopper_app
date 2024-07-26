import 'package:shopper_app/data/models/remote/products_response.dart';
import 'package:shopper_app/utils/constants/endpoints.dart';
import 'package:shopper_app/utils/extensions/int_extensions.dart';
import 'package:shopper_app/utils/network/dio/dio_client.dart';

class FavoriteService {
  Future<List<Result>> getFavorites() async {
    final response = await clientDio.get(Endpoints.getFavorite);
    final List data = response.data;

    if (response.statusCode.isSuccess) {
      return data.map((e) => Result.fromJson(e)).toList();
    }
    throw Exception();
  }

  Future<Result> postFavorites(int productId) async {
    final products = {"product": productId};
    final response = await clientDio.post(
      Endpoints.postFavorite,
      data: products,
    );
    final data = response.data;

    

    if (response.statusCode.isSuccess) {
      return Result.fromJson(data);
    }
    throw Exception();
  }
}
