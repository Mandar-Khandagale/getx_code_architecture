import 'package:get/get.dart';
import 'package:getx_code_architecture/data/network/model/login/login_request_model.dart';
import 'package:getx_code_architecture/feature/login/repository/login_repository.dart';
import 'package:getx_code_architecture/routes/app_pages.dart';
import 'package:getx_code_architecture/routes/app_routes.dart';
import 'package:getx_code_architecture/utils/custom_logger.dart';

class LoginController extends GetxController {
  final LoginRepository? loginRepository;

  final RxString _userName = "".obs;
  final RxBool _isLoader = true.obs;

  /// userName field getter setter
  RxString get userName => _userName;

  set userName(RxString value) {
    _userName.value = value.value;
  }

  /// isLoader field getter setter
  RxBool get isLoader => _isLoader;

  set isLoader(RxBool value) {
    _isLoader.value = value.value;
  }

  LoginController({this.loginRepository});

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future getLoginResponse() async {
    LogInRequestBody model =
        LogInRequestBody(userName: 'kminchelle', password: '0lelplR');

    await loginRepository?.loginRequest(logInRequestBody: model).then(
      (data) {
        data.fold(
          (error) {
            CustomLogger.printLog('Error: ${error.toString()}');
            //change(null, status: RxStatus.error(error.errorMsg));
          },
          (response) {
            CustomLogger.printLog('Success: ${response.userName}');
            //change(response, status: RxStatus.success());
            userName(response.userName);
            isLoader(false);
            Future.delayed(const Duration(seconds: 2), () {
              AppRoutes.getInstance().getOffName(routes: Routes.landingPage);
            });
          },
        );
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
