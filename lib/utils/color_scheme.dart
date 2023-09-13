import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instace;
  static ColorSchemeLight? get instance {
    _instace ??= ColorSchemeLight._init();
    return _instace;
  }

  ColorSchemeLight._init();

  final Color backgroundColor = const Color(0xffFBF6D9);
  final Color green = const Color(0xff58A96A);
  final Color black = const Color(0xff1E1F1B);
  final Color white = const Color(0xffFEFEFE);
  final Color grey = const Color(0xffF0F0F0);
  final Color purple = const Color(0xff6515dd);
}
