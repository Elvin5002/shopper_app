import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/constants/endpoints.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/change_password_model.dart';

class ChangePasswordService {
  Future<ChangePasswordResponse> update(
    String oldPassword,
    String password,
    String passwordConfirm,
  ) async {
    const endpoint = Endpoints.changePassword;
    final requestBody = {
      "old_password": oldPassword,
      "password": password,
      "password_confirm": passwordConfirm
    };

    final response = await clientDio.put(endpoint, data: requestBody);
    if (response.statusCode.isSuccess) {
      return ChangePasswordResponse.fromJson(response.data);
    }

    throw Exception();
  }
}
