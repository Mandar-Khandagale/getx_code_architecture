import 'package:flutter/material.dart';
import 'package:getx_code_architecture/base/base_page.dart';
import 'package:getx_code_architecture/utils/app_png.dart';
import 'package:getx_code_architecture/utils/asset_utils.dart';


class SplashPageView extends BasePageViewWidget {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppPng.asset(
        AssetUtils.splashBg,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

}
