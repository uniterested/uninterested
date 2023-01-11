import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';


 class App_bar extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  const App_bar({super.key,  this.leading,this.title,});

  @override
  Widget build(BuildContext context) {
    return Container(
        height:  120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(27)),
       color: AppColorPallet.orange3 ),  
        
        child:SafeArea(
          child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 18,bottom: 37),
            child: leading,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.5,bottom:30 ),
            child: title 
          )
          ]),
        ) ,
      );
    

  }
}


//  return Scaffold(
//       body: Container(
//         height:  120,
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(bottomRight: Radius.circular(27)),
//        color: AppColorPallet.orange3 ),  
        
//         child:Row(children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 18,top: 31),
//           child: AppBackButton()
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 18.5,top:30 ),
//           child: Text("Notification",style: 
//           AppTextStyle.sfpro(fontSize: 24,fontWeight: FontWeight.w500),),
//         )
//         ]) ,
//       ),
//     );
