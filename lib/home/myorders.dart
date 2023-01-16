import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_bar.dart';


class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorPallet.white,
        body: Column(children: [
          App_bar(
            leading: AppBackButton(),
            title: Text(
              "My orders",
              style:
                  AppTextStyle.sfpro(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          const CommonContainer2()
        ]));
  }
}

class CommonContainer2 extends StatelessWidget {
  const CommonContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
         child: ListView.builder(
          padding: EdgeInsets.only(top: 8),
         itemCount: 10,
         itemBuilder: 
          (context, index) => Padding(
            padding: const EdgeInsets.only(bottom:8.0,left: 8,right: 8),
            child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),
        color: AppColorPallet.orange.withOpacity(0.4),),          
        child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                child: Container(
                  width: 86,
                  height: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    
                  ),
                  child: Image.asset("assets/cartimage.png",
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,bottom: 52,top: 12
                ),
                child: SizedBox(width: 220,
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum",
                        textAlign: TextAlign.start,
                        style: AppTextStyle.sfpro(
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 8,),
                      Text(
                        "Delivered on oct 21",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: AppTextStyle.sfpro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  
                  ),
                ),
              ),
            ],
        ),
      ),
    ),
          )));
  }
}
