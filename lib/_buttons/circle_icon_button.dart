import 'package:flutter/material.dart';

ElevatedButton circleIconButton({EdgeInsetsGeometry? padding, double? size}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.amberAccent,
      shape: const CircleBorder(),
      padding: padding ?? const EdgeInsets.all(8),
    ),
    onPressed: () {},
    child: Icon(
      Icons.keyboard_arrow_right_rounded,
      color: Colors.black,
      size: size ?? 36,
    ),
  );
}
