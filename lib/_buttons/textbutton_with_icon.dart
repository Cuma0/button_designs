import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/text_theme.dart';

TextButton textbuttonWithIcon() {
  return TextButton(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Next',
          style: TextThemeLight.instance!.button
              .copyWith(color: ColorSchemeLight.instance!.black),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_right_alt_sharp,
          color: ColorSchemeLight.instance!.black,
          size: 32,
        ),
      ],
    ),
    onPressed: () {},
  );
}
