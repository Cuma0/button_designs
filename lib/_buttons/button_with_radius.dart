import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

ElevatedButton buttonWithRadius({double? width}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(40),
      elevation: 0,
      shadowColor: ColorSchemeLight.instance!.white,
      foregroundColor: ColorSchemeLight.instance!.white,
      backgroundColor: ColorSchemeLight.instance!.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Text(
      "Create Account",
      style: TextThemeLight.instance!.button,
    ),
    onPressed: () {},
  );
}
