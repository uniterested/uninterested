import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uninterested/utilities/AppColor.dart';

import 'AppIcons.dart';

class AppBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: SvgPicture.asset(
          AppLeadingIcons.back_button,
          color: AppColorPallet.black,
          height: 23,
          width: 23,
        ),
        onTap: () => Navigator.pop(context),
      ),
    );
  }
}
