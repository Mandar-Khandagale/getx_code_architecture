import 'package:get/get.dart';

class AppRoutes {
  static AppRoutes getInstance() {
    return Get.find<AppRoutes>();
  }

  getToName({required String routes, dynamic arguments}) {
    Get.toNamed(routes, arguments: arguments);
  }

  getTo({required String routes, dynamic arguments}) {
    Get.to(routes, arguments: arguments);
  }

  getOffAllName({required String routes, dynamic arguments}) {
    Get.offAllNamed(routes, arguments: arguments);
  }

  getOffName({required String routes, dynamic arguments}) {
    Get.offNamed(routes, arguments: arguments);
  }

  getOff({required String routes, dynamic arguments}) {
    Get.off(routes, arguments: arguments);
  }
}
