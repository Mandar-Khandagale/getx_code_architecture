import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_code_architecture/.env.dart';
import 'package:getx_code_architecture/di/app_dependencies.dart';
import 'package:getx_code_architecture/feature/splash/binding/splash_binding.dart';
import 'package:getx_code_architecture/routes/app_pages.dart';
import 'package:getx_code_architecture/utils/app_contant.dart';
import 'package:getx_code_architecture/utils/app_preferences.dart';
import 'package:getx_code_architecture/utils/asset_utils.dart';
import 'package:getx_code_architecture/utils/color_utils.dart';
import 'package:getx_code_architecture/utils/custom_logger.dart';

import 'feature/splash/controller/splash_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///initialize Pref
  await AppPreferences.getInstance();

  /// initialize app level dependencies
  await AppDependencies.dependencies();

  /// load the .env file contents into dotenv
  await dotenv.load(fileName: AssetUtils.envFile);
  BuildEnvironment.init(baseUrl: dotenv.env['api_base_url'] ?? "");

  CustomLogger.printLog('BaseUrl: ${env?.baseUrl}');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SplashBinding(),
      initialRoute: Routes.splashPage,
      getPages: AppPages.pages,
      title: AppConstant.appName,
      //smartManagement: SmartManagement.keepFactory,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          secondary: ColorUtils.sunColor,
        ),
      ),
    );
  }
}
