import '../models/remote/change_password_model.dart';

abstract class ChangePasswordContract {
  Future<ChangePasswordResponse> update(
    String oldPassword,
    String password,
    String passwordConfirm,
  );
}
