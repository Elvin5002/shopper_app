import '../../data/services/local/login_local_service.dart';
import '../../presentation/app.dart';
import '../di/locator.dart';
import '../extensions/navigation_extension.dart';
import '../helpers/pager.dart';

class UserController {
  static final loginLocalService = locator<LoginLocalService>();

  static String accessToken = loginLocalService.loginResponse!.tokens.access;
  static String refreshToken = loginLocalService.loginResponse!.tokens.refresh;

  static String email = loginLocalService.loginResponse!.email;

  static void logout() async{
    await loginLocalService.clearCache();
    navKey.currentContext?.removeAll(Pager.signIn);
  }
}
