import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_code_architecture/di/app_dependencies.dart';
import 'package:getx_code_architecture/feature/splash/binding/splash_binding.dart';
import 'package:getx_code_architecture/routes/app_pages.dart';
import 'package:getx_code_architecture/utils/app_contant.dart';
import 'package:getx_code_architecture/utils/app_preferences.dart';
import 'package:getx_code_architecture/utils/color_utils.dart';

Future<Widget> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///initialize Pref
  await AppPreferences.getInstance();

  /// initialize app level dependencies
  await AppDependencies.dependencies();

  return await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]).then(
    (value) => const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SplashBinding(),
      debugShowCheckedModeBanner: false,
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
