import 'package:flutter/material.dart';

Container textButtonWithZeroPadding() {
  return Container(
    color: Colors.black,
    child: TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Text(
        "Next",
      ),
    ),
  );
}
