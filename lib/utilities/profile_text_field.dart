import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';

class CommonTextFormField extends StatelessWidget {
  final title;
  final hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  List<TextInputFormatter>? inputFormatters;
  CommonTextFormField({
    Key? key,
    required this.textInputType,
    required this.title,
    this.validator,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.0, left: 24),
          child: Text(
            title,
            style: AppTextStyle.sfpro(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColorPallet.profileText),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Padding(
            padding: EdgeInsets.only(bottom: 5.0, right: 24, left: 24),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: textInputType,
              controller: controller,
              validator: validator,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColorPallet.zop_green_natural_light,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColorPallet.zop_Red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColorPallet.zop_green_natural_light,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColorPallet.zop_green_natural_light,
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: AppTextStyle.sfpro(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColorPallet.zop_orders_count)),
            ),
          ),
        ),
      ],
    );
  }
}
