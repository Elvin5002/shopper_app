import 'dart:developer';
import 'dart:io';

import 'package:shopper_app/data/models/remote/product_detail_response.dart';
import 'package:shopper_app/data/models/remote/product_rate_model.dart';

import '../../../utils/constants/endpoints.dart';
import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/products_response.dart';

class ProductService {
  Future<ProductResponse> getProducts({required int page}) async {
    final endpoint = '${Endpoints.products}$page';
    log('Endpoint: $endpoint');
    final response = await clientDio.get(endpoint);
    if (response.statusCode.isSuccess) {
      return ProductResponse.fromJson(response.data);
    } else if (response.statusCode == 404) {
      throw Exception('No data found for product');
    }
    throw Exception();
  }

  Future<ProductResponse> getProductsByCategoryId(int categoryId) async {
    final endpoint = '${Endpoints.productsByCategoryId}$categoryId';
    final response = await clientDio.get(endpoint);
    if (response.statusCode.isSuccess) {
      return ProductResponse.fromJson(response.data);
    } else if (response.statusCode == 404) {
      throw Exception('No data found for product');
    }
    throw Exception();
  }

  Future<ProductRateModel> rateProduct(
      int rating, String? message, int? parent, int productId) async {
    final requestBody = {
      "rating": rating,
      "parent": parent,
      "message": message,
      "product": productId
    };
    try {
      final response =
          await clientDio.post(Endpoints.createReview, data: requestBody);
      if (response.statusCode.isSuccess) {
        return ProductRateModel.fromJson(response.data);
      }
      throw Exception();
    } on SocketException {
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  Future<ProductDetailResponse> getProductDetail(String slug) async {
    final endpoint = '${Endpoints.productDetail}$slug/';
    final response = await clientDio.get(endpoint);
    if (response.statusCode.isSuccess) {
      return ProductDetailResponse.fromJson(response.data);
    } else if (response.statusCode == 404) {
      throw Exception('No data found for product');
    }
    throw Exception();
  }
}
