import 'package:easy_internet_checker/easy_internet_checker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_code_architecture/base/base_page.dart';
import 'package:getx_code_architecture/feature/login/controller/login_controller.dart';

class LoginPageView extends BasePageViewWidget {
  LoginController? controller;

  LoginPageView({this.controller, Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => controller!.isLoader.value
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(),
              )
            : Text(
                controller!.userName.toString(),
              ),
      ),
    );
  }
}
