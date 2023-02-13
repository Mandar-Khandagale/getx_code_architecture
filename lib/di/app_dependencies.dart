import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_code_architecture/data/network/api_service.dart';
import 'package:getx_code_architecture/feature/landing/controller/landing_controller.dart';
import 'package:getx_code_architecture/feature/login/controller/login_controller.dart';
import 'package:getx_code_architecture/feature/login/repository/login_repository.dart';
import 'package:getx_code_architecture/routes/app_routes.dart';
import 'package:getx_code_architecture/utils/custom_logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// get app level dependencies
class AppDependencies {
  /// inject dependencies
  static Future<void> dependencies() async {
    /// app routes instance
    Get.put(AppRoutes());

    /// Dio instance
    Get.lazyPut<Dio?>(() {
      Dio dio = Dio();
      dio.interceptors.add(PrettyDioLogger(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        logPrint: (log) {
          return CustomLogger.printLog(log.toString());
        },
      ));
      return dio;
    });

    /// get Dio instance
    Dio? dio = getFind(value: Dio());

    /// api service instance
    ApiService apiService = Get.put(ApiService(dio!));

    Get.lazyPut<LoginRepository?>(
      () {
        return LoginRepository(
          apiService: apiService,
          dioBind: dio,
        );
      },
    );

    /// login repository
    LoginRepository? loginRepository = getFind(value: LoginRepository());

    /// login controller
    Get.lazyPut<LoginController?>(() {
      return LoginController(
        loginRepository: loginRepository,
      );
    }, fenix: true);


    /// landing controller
    Get.lazyPut<LandingController?>(() {
      return LandingController();
    }, fenix: true);

  }

  /// get object of the dependencies
  static T? getFind<T>({T? value}) {
    return Get.find<T?>();
  }
}
