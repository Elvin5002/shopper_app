import '../models/remote/review_all_response.dart';

abstract class ReviewContract {
  Future<List<ReviewAllResponse>> getReviewByProductId(int id);
}
