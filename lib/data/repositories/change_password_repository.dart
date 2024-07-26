import 'package:shopper_app/data/services/remote/change_password_service.dart';
import '../contracts/change_password_contract.dart';
import '../models/remote/change_password_model.dart';

class ChangePasswordRepository implements ChangePasswordContract {
  ChangePasswordRepository(this._changePasswordService);

  final ChangePasswordService _changePasswordService;

  @override
  Future<ChangePasswordResponse> update(
          String oldPassword, String password, String passwordConfirm) =>
      _changePasswordService.update(oldPassword, password, passwordConfirm);
}
