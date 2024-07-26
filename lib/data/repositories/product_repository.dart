import '../contracts/product_contract.dart';
import '../models/remote/product_detail_response.dart';
import '../models/remote/product_rate_model.dart';
import '../models/remote/products_response.dart';
import '../services/remote/product_service.dart';

class ProductRepository implements ProductContract {
  ProductRepository(this._productService);

  final ProductService _productService;

  @override
  Future<ProductResponse> getProducts({required int page}) =>
      _productService.getProducts(page: page);

  @override
  Future<ProductResponse> getProductsByCategoryId(int categoryId) =>
      _productService.getProductsByCategoryId(categoryId);

  @override
  Future<ProductRateModel> rateProduct(
          {required int rating,
          String? message,
          int? parent,
          required int productId}) =>
      _productService.rateProduct(rating, message, parent, productId);

  @override
  Future<ProductDetailResponse> getProductDetail(String slug) =>
      _productService.getProductDetail(slug);
}
