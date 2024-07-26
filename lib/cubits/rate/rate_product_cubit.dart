import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/contracts/product_contract.dart';

part 'rate_product_state.dart';

class RateProductCubit extends Cubit<RateProductState> {
  RateProductCubit(this._productContract) : super(RateProductInitial());

  final ProductContract _productContract;

  final rateController = TextEditingController();

  final ratingSubject = BehaviorSubject<double>.seeded(4.0);

  void updateRating(double rating) {
    ratingSubject.add(rating);
  }

  void rateProduct({int? parent, required int productId}) async {
    try {
      emit(RateProductLoading());
      final response = await _productContract.rateProduct(
          rating: ratingSubject.value.toInt(),
          message: rateController.text,
          parent: parent,
          productId: productId);

      emit(RateProductSuccess());
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      emit(RateProductFailure());
    }
  }

  void dispose() {
    ratingSubject.close();
  }
}
