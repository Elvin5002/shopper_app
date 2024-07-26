import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/contracts/auth_contract.dart';
import '../../data/services/local/login_local_service.dart';
import '../../utils/di/locator.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authContract) : super(LoginInitial());

  final AuthContract _authContract;

  final _loginLocalService = locator<LoginLocalService>();

  late final controllers = {
    'email': TextEditingController(),
    'password': TextEditingController(),
  };

  void login() async {
    try {
      emit(LoginLoading());
      final response = await _authContract.login(
        controllers['email']!.text,
        controllers['password']!.text,
      );

      await _loginLocalService.saveLoginResponse(response);
      emit(LoginSuccess());
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      emit(LoginFailure());
    }
  }

  @override
  Future<void> close() {
    for (final controller in controllers.values) {
      controller.dispose();
    }
    return super.close();
  }
}
