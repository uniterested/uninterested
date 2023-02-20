
import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_bar.dart';

class NotificationScreen extends StatefulWidget {

   const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int selectedIndex=0;
  List data=[{
    "title":"Your order has been Recived",
    "sub":"Your order of ipsoem loreum has been recived will be delivered by Nov 24th thursday"
  },
  {
    "title":"Your order has been Cancelled",
    "sub":"Your cancell request order of ipsoem loreum has been approved refund will be credite in your account shortly"
  },
  {
    "title":"Your order has been Delivered",
    "sub":"Your order of ipsoem loreum has been delivereded"
  },
  {
    "title":"Your order has been Delivered",
    "sub":"Your order of ipsoem loreum has been delivereded"
  },
  {
    "title":"Your order has been Delivered",
    "sub":"Your order of ipsoem loreum has been delivereded"
  },
  {
    "title":"Your order has been Delivered",
    "sub":"Your order of ipsoem loreum has been delivereded"
  }
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Column(
       children: [
         App_bar(
          leading: AppBackButton(),
          title: Text("Notification",style: AppTextStyle.sfpro(
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),),
         ),
       Expanded(
         child: ListView.builder(
          padding: EdgeInsets.only(top: 8),
         itemCount: data.length,
         itemBuilder: 
          (context, index) => SizedBox(height: 88,
          child: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Padding(
              padding: const EdgeInsets.only(left: 16,top:8),
              child: Text(data[index]["title"],style: AppTextStyle.sfpro(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),),
            ),
            subtitle:Padding(
              padding: const EdgeInsets.only(left: 16,right: 24,top: 8),
              child: Text(data[index]["sub"]
           , style: AppTextStyle.sfpro(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),),
            ) ,
            shape: const RoundedRectangleBorder(side: 
            BorderSide(color: AppColorPallet.grey_)),
        
          tileColor:   selectedIndex == index ? AppColorPallet.listtilegrey : AppColorPallet.white,
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
          ),
          ),),
       )],
     ),
    



    );
  }
}