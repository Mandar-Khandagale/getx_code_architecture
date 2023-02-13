import 'package:flutter/material.dart';

class CustomLogger {
  CustomLogger._();

  /// This method is used to print the message passed to it in the logcat.
  static void printLog(String msg) {
    debugPrint(msg);
  }
}
