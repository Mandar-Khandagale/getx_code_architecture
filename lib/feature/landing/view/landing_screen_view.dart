import 'package:flutter/material.dart';
import 'package:getx_code_architecture/base/getx_base_page.dart';
import 'package:getx_code_architecture/feature/landing/controller/landing_controller.dart';
import 'package:getx_code_architecture/utils/color_utils.dart';
import 'package:getx_code_architecture/utils/custom_logger.dart';
import 'package:getx_code_architecture/utils/style_manager.dart';


class LandingScreen extends GetBasePage<LandingController?> {


  LandingScreen({super.key}) {
    CustomLogger.printLog("Controller: $controller");
  }

  @override
  PreferredSizeWidget? buildAppbar() {
    return AppBar(
      title: Text(
        controller?.title.toString() ?? "",
        style: StyleManager.appBarTextStyle,
      ),
      centerTitle: true,
      backgroundColor: ColorUtils.white,
      elevation: 0.0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: ColorUtils.lightGrey,
          height: 1.0,
        ),
      ),
    );
  }

  @override
  Widget buildView(BuildContext context) {
    return Center(
      child: Text(
        controller?.title.toString() ?? "",
      ),
    );
  }
}
