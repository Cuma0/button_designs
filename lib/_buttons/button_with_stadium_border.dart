import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

ElevatedButton buttonWithStadiumBorder() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: ColorSchemeLight.instance!.white,
        foregroundColor: ColorSchemeLight.instance!.white,
        backgroundColor: ColorSchemeLight.instance!.black,
        shape: const StadiumBorder()),
    child: Text(
      "Create Account",
      style: TextThemeLight.instance!.button,
    ),
    onPressed: () {},
  );
}
