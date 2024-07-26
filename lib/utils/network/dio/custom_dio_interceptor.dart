import 'dart:developer';

import 'package:dio/dio.dart';

import '../../controllers/user_controller.dart';
import '../../di/index.dart';
import '../../di/locator.dart';

class CustomDioInterceptor extends QueuedInterceptor {
  final _loginLocalService = locator<LoginLocalService>();
  final _authContract = locator<AuthContract>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    log('Error: ${err.response?.statusCode}');
    if (err.response?.statusCode == 401) {
      try {
        final tokens = await _authContract.refreshToken();
        _loginLocalService.saveLoginResponse(tokens);
      } catch (e) {
        UserController.logout();
      }
    }
    handler.next(err);
  }
}
