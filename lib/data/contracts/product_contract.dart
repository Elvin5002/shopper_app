import '../models/remote/product_detail_response.dart';
import '../models/remote/product_rate_model.dart';
import '../models/remote/products_response.dart';

abstract class ProductContract {
  Future<ProductResponse> getProducts({required int page});

  Future<ProductResponse> getProductsByCategoryId(int categoryId);

  Future<ProductRateModel> rateProduct(
      {required int rating,
      String? message,
      int? parent,
      required int productId});

  Future<ProductDetailResponse> getProductDetail(String slug);

// Future<ProductResponse> addProducts();
// Future<ProductResponse> removeProducts();
// Future<ProductResponse> editProducts();

// CRUD
// Create read update delete
}
