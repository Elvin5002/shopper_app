import '../contracts/category_contract.dart';
import '../models/remote/categories_model.dart';
import '../services/remote/category_service.dart';

class CategoryRepository implements CategoryContract {
  const CategoryRepository(this._categoryService);

  final CategoryService _categoryService;

  @override
  Future<List<CategoriesResponse>> getCategories() =>
      _categoryService.getCategories();
}
