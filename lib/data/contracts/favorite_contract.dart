import 'package:shopper_app/data/models/remote/products_response.dart';

abstract class FavoriteContract {
  Future<Result> postWishlist(int productId);
  Future<List<Result>> getWishlist();
}
