import '../contracts/auth_contract.dart';
import '../models/remote/login_response.dart';
import '../services/remote/auth_service.dart';

class AuthRepository implements AuthContract {
  AuthRepository(this._authService);

  final AuthService _authService;

  @override
  Future<LoginResponse> login(String email, String password) =>
      _authService.login(email, password);

  @override
  Future<LoginResponse> refreshToken() => _authService.refreshToken();
}
