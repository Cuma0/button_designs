import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

ElevatedButton buttonWithPic() {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shadowColor: Colors.white,
      foregroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      shape: StadiumBorder(
        side: BorderSide(width: 1, color: ColorSchemeLight.instance!.black),
      ),
    ),
    icon: Image.asset(
      "assets/images/google.png",
      fit: BoxFit.cover,
      height: 20,
    ),
    label: Text(
      "Sign in with Google",
      style: TextThemeLight.instance!.buttonThin
          .copyWith(color: ColorSchemeLight.instance!.black),
    ),
    onPressed: () {},
  );
}
