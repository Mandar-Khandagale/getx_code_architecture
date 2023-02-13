import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_code_architecture/base/base_page.dart';
import 'package:getx_code_architecture/feature/splash/controller/splash_controller.dart';
import 'package:getx_code_architecture/feature/splash/view/splash_screen_view.dart';

class SplashPage extends BasePage {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends BaseStatefulPage<SplashPage> {
  SplashController? _splashController;

  @override
  void initState() {
    _splashController = Get.find<SplashController?>();
    _splashController?.redirectToLogin();
    super.initState();
  }

  @override
  Widget buildView(BuildContext context) {
    return const SplashPageView();
  }
}
