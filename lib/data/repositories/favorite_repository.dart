import 'package:shopper_app/data/contracts/favorite_contract.dart';
import 'package:shopper_app/data/models/remote/products_response.dart';
import 'package:shopper_app/data/services/remote/favorite_service.dart';

class FavoriteRepo implements FavoriteContract {
  FavoriteRepo(this._favoriteService);

  final FavoriteService _favoriteService;

  @override
  Future<List<Result>> getWishlist() {
    return _favoriteService.getFavorites();
  }

  @override
  Future<Result> postWishlist(int productId) {
    return _favoriteService.postFavorites(productId);
  }
}
