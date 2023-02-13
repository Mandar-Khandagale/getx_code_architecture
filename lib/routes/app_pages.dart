import 'package:get/get.dart';
import 'package:getx_code_architecture/feature/login/view/login_screen.dart';
import 'package:getx_code_architecture/feature/splash/view/splash_screen.dart';

part './routes_path.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: Routes.splashPage,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.loginPage,
      page: () => const LoginPage(),
    ),
  ];
}
