import '../../../utils/constants/endpoints.dart';
import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/review_all_response.dart';

class ReviewService {
  Future<List<ReviewAllResponse>> getReviewByProductId(int id) async {
    final endpoint = '${Endpoints.reviewAll}$id/';
    final response = await clientDio.get(endpoint);
    if (response.statusCode.isSuccess) {
      final List data = response.data;
      return data.map((e) => ReviewAllResponse.fromJson(e)).toList();
    } else if (response.statusCode == 404) {
      throw Exception('No data found for product');
    }
    throw Exception();
  }
}
