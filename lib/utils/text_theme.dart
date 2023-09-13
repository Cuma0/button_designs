import 'package:flutter/material.dart';

import 'color_scheme.dart';

class TextThemeLight {
  static TextThemeLight? _instace;
  static TextThemeLight? get instance {
    _instace ??= TextThemeLight._init();
    return _instace;
  }

  TextThemeLight._init();

  final TextStyle title = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: ColorSchemeLight.instance!.black,
  );
  final TextStyle button = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: ColorSchemeLight.instance!.white,
  );
  final TextStyle buttonThin = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorSchemeLight.instance!.white,
  );
}
