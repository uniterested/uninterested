import 'package:flutter/material.dart';

import 'AppColor.dart';

class AppTextStyle {
  static TextStyle sfpro(  {
    Color color = AppColorPallet.black,
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 16,
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
  }
}
