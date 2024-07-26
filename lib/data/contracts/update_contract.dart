import '../models/remote/update_response.dart';

abstract class UpdateContract {
  Future<UpdateResponse> update(
    String firstName,
    String lastName,
    String username,
    String bio,
    String birthDay,
    String gender,
  );
}