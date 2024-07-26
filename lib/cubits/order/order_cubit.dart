import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/remote/products_response.dart';
import '../../data/services/remote/favorite_service.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this._favoriteService) : super(OrderInitial());

  final FavoriteService _favoriteService;
  List<Result> orders = [];

  void getFavorites() async {
    try {
      emit(OrderLoading());
      orders = await _favoriteService.getFavorites();
      log(orders.toString());
      emit(OrderSuccess(orders));
    } catch (e, s) {
      log("Error message");
      log(e.toString());
      log(s.toString());
      emit(OrderFailure());
    }
  }
}
