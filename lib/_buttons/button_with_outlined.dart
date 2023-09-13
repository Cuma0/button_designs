import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

ElevatedButton buttonWithOutlined() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorSchemeLight.instance!.green,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      side: BorderSide(
        color: ColorSchemeLight.instance!.black,
        width: 2,
      ),
    ),
    child: Text(
      "Create Account",
      style: TextThemeLight.instance!.button.copyWith(
        color: ColorSchemeLight.instance!.black,
        fontSize: 12,
      ),
    ),
    onPressed: () {},
  );
}
