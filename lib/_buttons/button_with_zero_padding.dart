import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

Container buttonWithZeroPadding() {
  return Container(
    color: Colors.yellowAccent,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: ColorSchemeLight.instance!.white,
        foregroundColor: ColorSchemeLight.instance!.white,
        backgroundColor: ColorSchemeLight.instance!.black,
        padding: EdgeInsets.zero, // horizontal
        minimumSize: Size.zero, // vertical
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // wrap button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        "Create Account",
        style: TextThemeLight.instance!.button,
      ),
      onPressed: () {},
    ),
  );
}
