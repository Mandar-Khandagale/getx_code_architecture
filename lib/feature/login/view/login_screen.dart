import 'package:flutter/material.dart';
import 'package:getx_code_architecture/base/base_page.dart';
import 'package:getx_code_architecture/di/app_dependencies.dart';
import 'package:getx_code_architecture/feature/login/controller/login_controller.dart';
import 'package:getx_code_architecture/feature/login/view/login_screen_view.dart';
import 'package:getx_code_architecture/utils/app_preferences.dart';
import 'package:getx_code_architecture/utils/color_utils.dart';
import 'package:getx_code_architecture/utils/style_manager.dart';

class LoginPage extends BasePage {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends BaseStatefulPage<LoginPage> {
  LoginController? loginController;

  @override
  void initState() {
    loginController = AppDependencies.getFind(value: LoginController());
    loginController?.getLoginResponse();
    super.initState();
  }

  @override
  PreferredSizeWidget? buildAppbar() {
    return AppBar(
      title: Text(
        AppPreferences.getString(AppPreferences.loginScreen) ?? "",
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
    return LoginPageView(
      controller: loginController,
    );
  }
}
