import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_bar.dart';
import 'package:uninterested/utilities/app_leading_app_bar.dart';
import 'package:uninterested/utilities/app_text_fitted_elevated_button.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorPallet.white,
        body:Column(children:[App_bar(
          leading: AppBackButton(),
          title: Text("Cart",style: AppTextStyle.sfpro(
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),),
        ),
        const CommonContainer2()]));
  }

  // Container buutoncontainer(String tittle) {
  //   return Container(
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(20), color: Colors.white),
  //     width: 190,
  //     height: 80,
  //     child: TextButton(onPressed: () {}, child: Text(tittle)),
  //   );
  // }

  final kBlack = Colors.black;
  final kgrey = Colors.grey;
  final kred = Colors.red;
}

class CommonContainer2 extends StatelessWidget {
  const CommonContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset("assets/profile1.png", fit: BoxFit.cover),
                ),
                Container(
                  width: 300,
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 250,
                            height: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Lorem ipsum", textAlign: TextAlign.start),
                                Text(
                                    "LETHER  HAND MAID POASAS AJJGGKGG BFDKDFHDFNFND")
                              ],
                            ),
                          )
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.abc))
                    ],
                  ),
                )
              ],
            ),
          ),
          Text(
            "LETHER  HAND MAID POASAS AJJGGKGG BFDKDFHDFNFND",
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextFittedElevatedButton(
                    onPressed: () {}, child: Text("Add to Cart")),
                AppTextFittedElevatedButton(
                    onPressed: () {}, child: Text("Buy now"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
