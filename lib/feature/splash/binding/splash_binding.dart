import 'package:get/get.dart';
import 'package:getx_code_architecture/feature/splash/controller/splash_controller.dart';

class SplashBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut<SplashController?>(
      () {
        return SplashController();
      },
    );
  }
}
