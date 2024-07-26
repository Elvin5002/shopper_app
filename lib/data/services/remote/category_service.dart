import '../../../utils/constants/endpoints.dart';
import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/categories_model.dart';

class CategoryService {
  Future<List<CategoriesResponse>> getCategories() async {
    const enpoint = Endpoints.categories;

    final response = await clientDio.get(enpoint);

    if (response.statusCode.isSuccess) {
      final List data = response.data;
      return data.map((e) => CategoriesResponse.fromJson(e)).toList();
    }
    throw Exception();
  }
}
