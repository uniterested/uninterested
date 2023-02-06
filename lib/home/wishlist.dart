import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_bar.dart';
import 'package:uninterested/utilities/app_text_fitted_elevated_button.dart';
import 'package:uninterested/utilities/bottom_nav.dart';



class WishlistScrn extends StatefulWidget {
  const WishlistScrn({Key? key}) : super(key: key);

  @override
  State<WishlistScrn> createState() => _WishlistScrnState();
}

class _WishlistScrnState extends State<WishlistScrn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: AppColorPallet.white,
            body: Column(children: [
              App_bar(
                leading: AppBackButton(),
                title: Text(
                  "Wishlist",
                  style:
                      AppTextStyle.sfpro(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const CommonContainer2()
            ])),
      BottomNavigation()],
    );
  }
}

class CommonContainer2 extends StatefulWidget {
  const CommonContainer2({Key? key}) : super(key: key);

  @override
  State<CommonContainer2> createState() => _CommonContainer2State();
}

class _CommonContainer2State extends State<CommonContainer2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 8),
        itemCount: 10,
        itemBuilder: (context, index) =>Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
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
                          left: 11,bottom: 41,top: 8
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
                              const SizedBox(height: 8,),
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
                    child: Text(
                      "LETHER HAND MAID POASAS AJJGGKGG BFDKDFHDFNFND",                                                                                                              
                      style: AppTextStyle.sfpro(
                          fontSize: 16, fontWeight: FontWeight.w400),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only( top: 16,bottom: 16,left: 17,right: 12),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         SizedBox(
                          height: 46,
                          width: 152,
                           child: AppTextFittedElevatedButton(
                              backgroundColor: AppColorPallet.lightNavy,
                              
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              onPressed: () {},
                              child: Text(
                                "ADD TO CART",
                                style: AppTextStyle.sfpro(
                                    color: AppColorPallet.textGrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )),
                         ),
                        SizedBox(
                          height: 46,
                          width: 152,
                          child: AppTextFittedElevatedButton(
                              backgroundColor: AppColorPallet.navy,
                            
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
                      ],
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
