import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';

class AppTextFittedElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text child;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle? textStyle;
  final double elevation;
  final bool expandAcrossWidth;
  final OutlinedBorder? shape;

  const AppTextFittedElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.backgroundColor = AppColorPallet.disable_btn,
    this.foregroundColor = AppColorPallet.zop_green_elevating,
    this.expandAcrossWidth = false,
    this.elevation = 0,
    this.textStyle,
    this.shape,
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
          shape: shape,
          textStyle: textStyle ??
              AppTextStyle.sfpro(
                color: AppColorPallet.white,
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),
          side: BorderSide(
            color: backgroundColor,
          ),
        ),
        child: FittedBox(
          child: child,
        ),
      ),
    );
  }
}

// Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 15.0,
//             horizontal: 32.0,
//           ),
