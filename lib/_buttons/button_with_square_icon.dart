import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';
import '../utils/context_extensions.dart';

ElevatedButton buttonWithSquareIcon(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorSchemeLight.instance!.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      minimumSize: Size.zero,
      padding: context.paddingNormal,
      elevation: 0,
    ),
    onPressed: () {},
    child: const Icon(
      Icons.arrow_back_ios_new_rounded,
      color: Colors.white,
      size: 22,
    ),
  );
}
