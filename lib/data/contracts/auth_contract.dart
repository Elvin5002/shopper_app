import '../models/remote/login_response.dart';

abstract class AuthContract {
  Future<LoginResponse> login(
    String email,
    String password,
  );

  Future<LoginResponse> refreshToken();

  // Future<LoginResponse> register(
  //   String email,
  //   String password,
  // );
}
