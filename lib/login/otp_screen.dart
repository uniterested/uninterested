
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_leading_app_bar.dart';
import 'package:uninterested/utilities/app_text_fitted_elevated_button.dart';
import 'package:uninterested/utilities/formatter/otp_input.dart';


class OtpScreen extends StatefulWidget {
  static String route = '/verify_otp';
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // late TextEditingController _otpController;
  bool isOtpFormatError = false;
  @override
  
 

  Widget build(BuildContext context) {
    
      return Scaffold(
        backgroundColor: AppColorPallet.white,
        appBar: AppLeadingAppBar(
          background: AppColorPallet.white,
          leading: AppBackButton(),
          title: "Phone Verification",
          
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 149),
                    child: Text(
                      "4 digit OTP has been sent to your no",
                      style:
                          AppTextStyle.sfpro(fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 27),
                        child: Container(
                          decoration: BoxDecoration(
                          border: Border.all(color: AppColorPallet.hint),
                            borderRadius: BorderRadius.circular(9),
                            
                          ),
                          
                          height: 50,
                          width: 220,
                          
                          // width: MediaQuery.of(context).size.width * 4 / 5,
                          child: Center(
                            child: TextField(
                              // controller: _otpController,
                              autofocus: true,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.digitsOnly,
                                OtpInputFormatter(),
                              ],
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Enter OTP",
                                hintStyle: AppTextStyle.sfpro(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: AppColorPallet.hint
                                ),
                              
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),

                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (isOtpFormatError)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Entered wrong format',
                            style: AppTextStyle.sfpro(
                              color: AppColorPallet.zop_Red,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40,right: 40, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Didn’t recive the OTP ?",
                          style: AppTextStyle.sfpro(
                            fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            'Resend OTP',
                            style: AppTextStyle.sfpro(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),

                   Padding(
                    padding: EdgeInsets.only(left: 40,right: 30,top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Automatically detect the OTP ?",
                          style: AppTextStyle.sfpro(
                            fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          child: Text(
                            'Yes',
                            style: AppTextStyle.sfpro(
                                fontWeight: FontWeight.w500, fontSize: 17,
                                color: AppColorPallet.pink2),
                          ),
                        )
                      ],
                    ),
                  ),

                  Flexible(
                    child: SizedBox(
                      height: 649,
                    ),
                  ),
                  AppTextFittedElevatedButton(
                    onPressed: () {
                    
                    },
                    child: Text(
                      "Verify",
                     style: AppTextStyle.sfpro(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColorPallet.white
                     ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(
                      
                      left: 22.0,
                      right: 22,
                      bottom: 63
                    ),
                    child: GestureDetector(
                      onTap: ()  {
                        
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "By continuing you acknowledge that you have read and understood and agree to our  ",
                                style: AppTextStyle.sfpro(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color:AppColorPallet.grey2
                                )),
                            TextSpan(
                              text: "Terms of service ",
                              style: AppTextStyle.sfpro(
                                fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColorPallet.blue2),
                            ),
                            TextSpan(
                                text: "and ",
                                style: AppTextStyle.sfpro(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColorPallet.grey2
                                )),
                            TextSpan(
                              text: "Privacy Policy",
                              style: AppTextStyle.sfpro(
                                fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColorPallet.blue2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      
    );
  }
}
