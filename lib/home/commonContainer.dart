import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_bar.dart';
import 'package:uninterested/utilities/app_leading_app_bar.dart';
import 'package:uninterested/utilities/app_text_fitted_elevated_button.dart';

class CommonContainer extends StatefulWidget {
  const CommonContainer({Key? key}) : super(key: key);

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorPallet.white,
        body: Column(children: [
          App_bar(
            leading: AppBackButton(),
            title: Text(
              "Cart",
              style:
                  AppTextStyle.sfpro(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          const CommonContainer2()
        ]));
  }

  // Container buutoncontainer(String tittle) {
  final kBlack = Colors.black;

  final kgrey = Colors.grey;

  final kred = Colors.red;
}

class CommonContainer2 extends StatefulWidget {
  const CommonContainer2({Key? key}) : super(key: key);

  @override
  State<CommonContainer2> createState() => _CommonContainer2State();
}

class _CommonContainer2State extends State<CommonContainer2> {
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 8),
        itemCount: 10,
        itemBuilder: (context, index) => 
            Padding(
          padding: const EdgeInsets.only(left: 8, right:8,bottom: 8),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            elevation: 5,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppLeadingIcons.closeIcon),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
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
                            left: 11,bottom: 32,top: 16
                          ),
                          child: Container(width: 220,
                          
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem ipsum",
                                  textAlign: TextAlign.start,
                                  style: AppTextStyle.sfpro(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "will be delivered by Tuesday",
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
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 230,
                            child: Text(
                              "And we’ll bring straight to your door in few days                                                                                                              ",
                              style: AppTextStyle.sfpro(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColorPallet.quantitygrey),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      height: 26,
                                      width: 33,
                                      child: Icon(Icons.remove),
                                    ),
                                    onTap: (() {
                                      minus();
                                    }),
                                  ),
                                  Container(
                                      color: AppColorPallet.listtilegrey,
                                      height: 26,
                                      width: 33,
                                      child: Text(
                                        '$_n',
                                        style: AppTextStyle.sfpro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400
                                        ),
                                        textAlign: TextAlign.center,
                                      )),
                                  GestureDetector(
                                    child: Container(
                                      height: 26,
                                      width: 33,
                                      child: Icon(Icons.add),
                                    ),
                                    onTap: (() {
                                      add();
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
                      child: SizedBox(
                        height: 46,
                        child: AppTextFittedElevatedButton(
                            backgroundColor: AppColorPallet.navy,
                            expandAcrossWidth: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {},
                            child: Text(
                              "BUY NOW",
                              style: AppTextStyle.sfpro(
                                  color: AppColorPallet.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
     ),
    );
  }
}
