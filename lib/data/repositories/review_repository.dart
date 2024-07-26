import '../contracts/review_contract.dart';
import '../models/remote/review_all_response.dart';
import '../services/remote/review_service.dart';

class ReviewRepository implements ReviewContract {
  const ReviewRepository(this._reviewService);
  final ReviewService _reviewService;

  @override
  Future<List<ReviewAllResponse>> getReviewByProductId(int id) =>
      _reviewService.getReviewByProductId(id);
}
