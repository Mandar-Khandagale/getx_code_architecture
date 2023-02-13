
import 'package:flutter/material.dart';

class AppPng {
  AppPng._();

  static Widget asset(
      String assetName, {
        double? width,
        double? height,
        BoxFit fit = BoxFit.contain,
        Color? color,
        alignment = Alignment.center,
        BlendMode colorBlendMode = BlendMode.srcIn,
        String? semanticsLabel,
      }) {
    return Image.asset(
      assetName,
      height: height,
      color: color,
    );
  }

  static Widget network(
      String assetName, {
        double? width,
        double? height,
        BoxFit fit = BoxFit.contain,
        Color? color,
        alignment = Alignment.center,
        BlendMode colorBlendMode = BlendMode.srcIn,
        String? semanticsLabel,
      }) {
    return Image.network(
      assetName,
      height: height,
    );
  }
}
