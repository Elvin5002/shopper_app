import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/contracts/favorite_contract.dart';
import '../../data/models/remote/products_response.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this._contract) : super(FavoriteInitial());

  final FavoriteContract _contract;

  final wishListSubject = BehaviorSubject<List<Result>>();
  final List<Result> favoriteList = [];

  void getFavorites() async {
    try {
      favoriteList.clear();
      final result = await _contract.getWishlist();
      favoriteList.addAll(result);
      wishListSubject.add(favoriteList);
    } catch (e) {
      log("Error message");
    }
  }

  void addToFavorites(Result product) async {
    try {
      final result = await _contract.postWishlist(product.id!);
      if (favoriteList.contains(product)) {
        favoriteList.removeWhere((e) => result.product == e.id);
        wishListSubject.add(favoriteList);
      }
    } catch (e) {
      log("Error  ${e.toString()}");
    }
  }

//   if (!favourites.any((element) => element.id == product.id)) { // favorit listinin icindeki elementin id-si product.id ile eyni deyilse add ele
//     favourites.add(product);
//     emit(FavoriteSuccess());
//   } else {
//     favourites.removeWhere((element) => element.id == product.id); // eger idler beraberdise list-in icinde sil
//     emit(FavoriteSuccess());
//   }
// }
}
