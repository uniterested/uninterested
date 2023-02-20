import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';



class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage({required this.title,required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Column(
        
        children: <Widget>[
        
          Padding(
            padding: const EdgeInsets.only(left: 80,right:80,top: 119),
            child: Text(
              title,
              style: AppTextStyle.sfpro(
                fontSize: 24,
                color: AppColorPallet.zop_location_text,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
           Padding(
            padding: const EdgeInsets.only(left: 80,right: 80,top: 13),
            child: Text(
              description,
              style: AppTextStyle.sfpro(
                fontSize: 16,
                color: AppColorPallet.zop_location_text,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 48,
          ),
         
          SvgPicture.asset(
            image,
            width: 386,
            height: 386,
          ),
          
          SizedBox(
            height: 34,
          ),
        ],
      ),
    );
  }
}
