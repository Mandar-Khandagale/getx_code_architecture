import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:getx_code_architecture/enum/build_flavor.dart';
import 'package:getx_code_architecture/utils/asset_utils.dart';
import 'package:getx_code_architecture/main/.env.dart';
import 'package:getx_code_architecture/main/app.dart';

void main() async {
  Widget app = await initializeApp();

  /// load the .env file contents into dotenv
  await dotenv.load(fileName: AssetUtils.envDevFile);

  BuildEnvironment.init(
    flavor: BuildFlavor.dev,
    environment: dotenv.env['environment'],
  );

  runApp(
    Directionality(
      textDirection: TextDirection.rtl,
      child: Banner(
        message: "DEV",
        location: BannerLocation.topStart,
        child: app,
      ),
    ),
  );

}
