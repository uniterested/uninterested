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
          padding: EdgeInsets.only( left: 16),
          child: Text(
            title,
            style: AppTextStyle.sfpro(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColorPallet.title),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:10,bottom: 20.0, right: 16, left: 16),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: textInputType,
            controller: controller,
            validator: validator,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColorPallet.zop_green_natural_light,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColorPallet.zop_Red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColorPallet.zop_green_natural_light,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColorPallet.zop_green_natural_light,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 8),
                hintText: hintText,
                hintStyle: AppTextStyle.sfpro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColorPallet.hint)),
          ),
        ),
      ],
    );
  }
}
