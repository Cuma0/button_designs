import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

ElevatedButton buttonWithIcon() {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(40),
      elevation: 0,
      shadowColor: Colors.white,
      foregroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      shape: const StadiumBorder(
          side: BorderSide(
        width: 2,
      )),
    ),
    icon: Icon(Icons.location_on_outlined,
        color: ColorSchemeLight.instance!.black),
    label: Text(
      "Location on",
      style: TextThemeLight.instance!.buttonThin
          .copyWith(color: ColorSchemeLight.instance!.black),
    ),
    onPressed: () {},
  );
}
