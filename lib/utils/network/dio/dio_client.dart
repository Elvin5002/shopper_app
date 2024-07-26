import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:shopper_app/utils/network/dio/custom_dio_interceptor.dart';

import '../../controllers/user_controller.dart';

final Dio authDio = Dio()..interceptors.add(AwesomeDioInterceptor());

final Dio clientDio = Dio(
  BaseOptions(
    headers: {
      'Authorization': 'Bearer ${UserController.accessToken}',
    },
  ),
)..interceptors.add(AwesomeDioInterceptor())..interceptors.add(CustomDioInterceptor());
