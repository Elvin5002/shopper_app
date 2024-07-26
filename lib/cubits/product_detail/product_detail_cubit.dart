import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/models/remote/product_detail_response.dart';
import '../../data/models/remote/review_all_response.dart';
import '../../utils/di/index.dart';

part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit(
    this._productContract,
    this._reviewContract,
  ) : super(ProductDetailInitial());

  final ProductContract _productContract;
  final ReviewContract _reviewContract;

  final productDetailSubject = BehaviorSubject<ProductDetailResponse>();
  final reviewAllsubject = BehaviorSubject<List<ReviewAllResponse>>();

  Stream<ProductDetailResponse> get productDetailStream =>
      productDetailSubject.stream;

  Stream<List<ReviewAllResponse>> get reviewAllStream =>
      reviewAllsubject.stream;

  void getProductDetail(String slug) async {
    try {
      final product = await _productContract.getProductDetail(slug);
      productDetailSubject.add(product);
    } catch (e, s) {
      log('$e');
      log('$s');
      productDetailSubject.addError('$e');
    }
  }

  void getAllReviews(int productId) async {
    try {
      final reviews = await _reviewContract.getReviewByProductId(productId);
      reviewAllsubject.add(reviews);
    } catch (e, s) {
      log('$e');
      log('$s');
      reviewAllsubject.addError('$e');
    }
  }

  @override
  Future<void> close() {
    productDetailSubject.close();
    reviewAllsubject.close();
    return super.close();
  }
}
