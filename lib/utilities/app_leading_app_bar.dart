import 'package:flutter/material.dart';

import 'AppColorStyle.dart';

class AppLeadingAppBar extends AppBar {
  AppLeadingAppBar(
      {Key? key,
      String? title,
      Color? background,
      Widget? leading,
      List<Widget>? action,
      int? elevation,
      PreferredSizeWidget? bottom})
      : super(
          elevation: 0,
          key: key,
          bottom: bottom,
          centerTitle: true,
          title: Text(
            title ?? "",
            style: AppTextStyle.sfpro(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              
            ),
          ),
          backgroundColor: background,
          actions: action,
          leading: leading,
        );
}
