import '../../../utils/constants/endpoints.dart';
import '../../../utils/controllers/user_controller.dart';
import '../../../utils/extensions/int_extensions.dart';
import '../../../utils/network/dio/dio_client.dart';
import '../../models/remote/login_response.dart';

class AuthService {
  Future<LoginResponse> login(
    String email,
    String password,
  ) async {
    const endpoint = Endpoints.login;
    final requestBody = {
      "email": email,
      "password": password,
    };

    final response = await authDio.post(endpoint, data: requestBody);

    if (response.statusCode.isSuccess) {
      return LoginResponse.fromJson(response.data);
    }
    throw Exception();
  }

  Future<LoginResponse> refreshToken() async {
    const enpoint = Endpoints.refreshToken;
    final requestBody = {"refresh": UserController.refreshToken};

    final response = await authDio.post(enpoint, data: requestBody);

    if (response.statusCode.isSuccess) {
      return LoginResponse.fromJsonTokens(response.data);
    }
    throw Exception();
  }
}
