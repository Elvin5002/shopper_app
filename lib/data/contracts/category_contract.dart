import '../models/remote/categories_model.dart';

abstract class CategoryContract {
  Future<List<CategoriesResponse>> getCategories();
}
