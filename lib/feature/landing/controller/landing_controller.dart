import 'package:get/get.dart';
import 'package:getx_code_architecture/utils/app_contant.dart';

class LandingController extends GetxController {
  final RxString _title = "".obs;

  /// userName field getter setter
  RxString get title => _title;

  set title(RxString value) {
    _title.value = value.value;
  }

  @override
  void onInit() {
    title(AppConstant.landingPage);
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
