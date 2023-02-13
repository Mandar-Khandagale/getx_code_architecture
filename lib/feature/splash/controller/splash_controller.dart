import 'package:get/get.dart';
import 'package:getx_code_architecture/routes/app_pages.dart';
import 'package:getx_code_architecture/routes/app_routes.dart';
import 'package:getx_code_architecture/utils/app_contant.dart';
import 'package:getx_code_architecture/utils/app_preferences.dart';

class SplashController extends GetxController {

  redirectToLogin() {
    Future.delayed(const Duration(seconds: 4), () {
      /// set dummy value for pref test
      AppPreferences.setString(AppPreferences.loginScreen, AppConstant.appName);

      AppRoutes.getInstance().getOffAllName(routes: Routes.loginPage);
    });
  }
}
