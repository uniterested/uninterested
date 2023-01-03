import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';
// import 'package:zopnote_consumer/utilities/text_style.dart';

import 'AppColorStyle.dart';
//  import 'color_pallete.dart';

class AppTextFittedElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text child;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle? textStyle;
  final double elevation;
  final bool expandAcrossWidth;

  const AppTextFittedElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.backgroundColor = AppColorPallet.navy,
    this.foregroundColor = AppColorPallet.white,
    this.expandAcrossWidth = false,
    this.elevation = 0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: expandAcrossWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          disabledForegroundColor: backgroundColor.withOpacity(0.38),
          disabledBackgroundColor: backgroundColor.withOpacity(0.12),
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          textStyle: textStyle ??
              AppTextStyle.sfpro(
                color: AppColorPallet.white,
                fontWeight: FontWeight.w700,
              ),
          side: BorderSide(
            color: backgroundColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 32.0,
          ),
          child: FittedBox(
            child: child,
          ),
        ),
      ),
    );
  }
}