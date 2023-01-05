import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/AppIcons.dart';
import 'package:uninterested/utilities/app_text_fitted_elevated_button.dart';
import 'package:uninterested/utilities/formatter/phonenumber.dart';


class LogInScreen extends StatefulWidget {
  static String route = '/login';
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _contactNumberController =
      TextEditingController();
  String? contactError;
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        backgroundColor: AppColorPallet.white,
        body: Column(
          children: [
            Flexible(
              child: SizedBox(
                height: 124,
              ),
            ),
            Center(
              child: Text("Log in",style: AppTextStyle.sfpro(
                fontSize: 24,
                fontWeight: FontWeight.w600
              ),)           
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46,
              vertical: 16),
              child: Container(
                  alignment: Alignment.center,
                              
                  child: SvgPicture.asset(
                    "assets/login.svg",
                  )
                ),
            ),

            
            Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 28),
                      child: Text("Phone Number *",style: AppTextStyle.sfpro(
                        fontSize: 14,fontWeight: FontWeight.w500,
                        color: AppColorPallet.grey
                      ),),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 26,right: 26),
                      child: Material(
                        elevation: 2,
                        
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                        
                          decoration: BoxDecoration(
                         
                            borderRadius: BorderRadius.circular(8),
                             border: Border.all(
                              color: AppColorPallet.hintgrey
                             )
                          ),
                          height: 50,
                          // width: 350,
                          // width: MediaQuery.of(context).size.width * 4 / 5,
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                                  child: SvgPicture.asset(AppLeadingIcons.flag),
                                ),
                                Text(
                                  "+91",
                                  style: AppTextStyle.sfpro(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 12.0,
                                  ),
                                  child:SvgPicture.asset(AppLeadingIcons.arrow_down),
                                  
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 200,
                                  child: TextField(
                                    
                                    controller: _contactNumberController,
                                    autofocus: true,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(12),
                                      FilteringTextInputFormatter.digitsOnly,
                                      PhoneNumberFormatter()
                                    ],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5, //Add this
                                    ),
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(

                                      contentPadding: EdgeInsets.only(left: 2,top: 2),
                                      
                                      hintText: "Enter Phone Number",
                                      border: InputBorder.none,
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      hintStyle: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: AppColorPallet.hintgrey,
                                        
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (contactError != null)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          contactError.toString(),
                          style: AppTextStyle.sfpro(
                            color: AppColorPallet.zop_Red,
                          ),
                        ),
                      ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: AppTextFittedElevatedButton(
            
                expandAcrossWidth: true,
                onPressed: () {
                  
                },
                child: Text("Sent OTP",),
              ),
            ),
           
         Padding(
           padding: const EdgeInsets.only(top: 32),
           child: RichText(text: TextSpan(text: "Are you a New user ?",
           style: AppTextStyle.sfpro(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColorPallet.grey2
           ),
           children: [
            TextSpan(text: " Sign Up",style: AppTextStyle.sfpro(
              fontSize: 16,fontWeight: FontWeight.w600,

            ))
           ])),
         )

          ],
        ),
      
    );
  }
}
