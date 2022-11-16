import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCardContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final List<BoxShadow>? boxShadow;

  const AppCardContainer({
    Key? key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.margin,
    this.color,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        margin: margin ?? EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          color: color ?? Colors.transparent,
          borderRadius: BorderRadius.circular(9),
          boxShadow: boxShadow ??
              [
                // BoxShadow(
                //     color: Colors.grey.withOpacity(.1),
                //     blurRadius: 4,
                //     offset: Offset.fromDirection(10)),
                // BoxShadow(
                //     color: Colors.grey.withOpacity(.1),
                //     blurRadius: 4,
                //     offset: Offset.fromDirection(-10))

                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: .5,
                  blurRadius: 7,
                  offset: Offset(5, 5), // changes position of shadow
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: .5,
                  blurRadius: 7,
                  offset: Offset(-5, -5), // changes position of shadow
                ),
              ],
        ),
        child: child);
  }
}
