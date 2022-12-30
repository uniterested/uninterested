import 'dart:io';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_leading_app_bar.dart';
import 'package:uninterested/utilities/profile_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailIdController = TextEditingController();
  final TextEditingController _alternateMobNoController =
      TextEditingController();
  XFile? picture = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPallet.zop_green_natural_light,
      appBar: AppLeadingAppBar(
        background: AppColorPallet.zop_green_natural_light,
        title: "Profile",
        leading: AppBackButton(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          // key: merchantProfileForm,
          
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: AppColorPallet.zop_green_natural_light,
                    height: 64,
                  ),
                  Container(
                    color: AppColorPallet.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 99.0, left: 26, bottom: 52),
                          child: GestureDetector(
                            child: Text(
                              "Let's create your profile",
                              style: AppTextStyle.sfpro(
                                  fontWeight: FontWeight.w600),
                            ),
                            onTap: (() {}),
                          ),
                        ),
                        CommonTextFormField(
                          textInputType: TextInputType.text,
                          controller: _userNameController,
                          title: "Your Name",
                          hintText: "Enter name",
                          // validator: MultiValidator([
                          //   RequiredValidator(
                          //       errorText: "Please enter your name"),
                          // ]),
                        ),
                        CommonTextFormField(
                          textInputType: TextInputType.number,
                          controller: _mobileNumberController,
                          title: "Mobile Number",
                          hintText: "Enter mobile number",
                          // validator: MultiValidator([
                          //   LengthRangeValidator(
                          //       min: 10,
                          //       max: 13,
                          //       errorText: "Please enter valid phone number"),
                          //   RequiredValidator(
                          //       errorText: "Please enter mobile name"),
                          // ]),
                          // inputFormatters: [
                          //   LengthLimitingTextInputFormatter(13),
                          //   FilteringTextInputFormatter.digitsOnly
                          // ],
                        ),
                        CommonTextFormField(
                          textInputType: TextInputType.number,
                          controller: _alternateMobNoController,
                          title: "Alternate Mobile Number",
                          hintText: "Enter alternate mobile number",
                          inputFormatters: [
                            // LengthLimitingTextInputFormatter(10),
                            // FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                        CommonTextFormField(
                          textInputType: TextInputType.emailAddress,
                          controller: _emailIdController,
                          title: "Email Id",
                          hintText: "Enter Email Id",
                          // validator: MultiValidator(
                          // [EmailValidator(errorText: 'Enter valid email')]),
                        ),

                        //dropdownbusiness category

                        SizedBox(
                          height: 20,
                        ),
                        // Center(
                        //   child: AppTextFittedElevatedButton(
                        //     onPressed: () async {
                        //       if (merchantProfileForm.currentState!
                        //           .validate()) {
                        //         final contactNumber =
                        //             '+91' + _mobileNumberController.text;
                        //         final alternateContactNumber =
                        //             _alternateMobNoController.text != ''
                        //                 ? ('+91' +
                        //                     _alternateMobNoController.text)
                        //                 : '';
                        //         final userId =
                        //             await AppSharedPreferences.getUserId();
                        //         AppSharedPreferences.setUserName(
                        //             userName: _userNameController.text);
                        //         print(userId);
                        //         final customerModel = CustomerModel(
                        //             id: userId!,
                        //             contactNumber: contactNumber,
                        //             firstName: _userNameController.text,
                        //             name: _userNameController.text,
                        //             imageName:
                        //                 picture == null ? '' : picture?.name,
                        //             emailId: _emailIdController.text,
                        //             alternateContactNumber:
                        //                 alternateContactNumber,
                        //             profileImage: picture != null
                        //                 ? File(picture!.path)
                        //                 : null,
                        //             customerId: userId,

                        //             imagePath:
                        //                 picture == null ? '' : picture!.path,

                        //         context.read<CustomerSetupBloc>()
                        //           ..add(
                        //             CustomerOnCreate(
                        //               customerModel: customerModel,
                        //             ),
                        //           );
                        //       }
                        //     },
                        //     child: Text("Next"),
                        //   ),
                        // ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                  left: 20,
                  top: 10,
                  child: picture == null
                      ? CircleAvatar(
                          radius: 60,
                          child: Icon(Icons.person),
                        )
                      : CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(
                            File(picture!.path),
                          ),
                        )),
              Padding(
                padding: const EdgeInsets.only(left: 110.0, top: 82),
                child: CircleAvatar(
                  radius: 19,
                  // backgroundColor: AppColorPallet.zop_green_natural_light,
                  child: IconButton(
                    onPressed: () {
                      showAdaptiveActionSheet(
                        context: context,
                        title: Text(
                          'Select Profile Picture',
                          // style: AppTextStyle.latoMedium(
                          //   color: AppColorPallet.zop_green,
                          // ),
                        ),
                        androidBorderRadius: 30,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              leading: Icon(
                                Icons.camera,
                                // color: AppColorPallet.zop_green,
                              ),
                              title: Text(
                                'From Camera',
                                // style: AppTextStyle.latoMedium(
                                //   fontSize: 18,
                                //   color: AppColorPallet.zop_Sleepy_Dark,
                                // ),
                              ),
                              onPressed: (context) {
                                _pickImage();
                                Navigator.of(context).pop();
                              }),
                          BottomSheetAction(
                              leading: Icon(
                                Icons.image,
                                color: AppColorPallet.black,
                              ),
                              title: Text(
                                'Upload from Gallery',
                                // style: AppTextStyle.latoMedium(
                                //   fontSize: 18,
                                //   color: AppColorPallet.zop_Sleepy_Dark,
                                // ),
                              ),
                              onPressed: (context) {
                                _pickImageGallery();
                                Navigator.of(context).pop();
                              }),
                        ],
                        cancelAction: CancelAction(
                            title: Text(
                          'Done',
                          style: AppTextStyle.sfpro(
                              // color: Colors.accents,
                              ),
                        )),
                      );
                    },
                    icon: Icon(Icons.edit),
                    // icon: SvgPicture.asset(
                    //   AppIcons.pencil_simple,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pickImage() async {
    ImagePicker _picker = ImagePicker();
    picture = await _picker.pickImage(
      source: ImageSource.camera,
      maxHeight: 2500,
      maxWidth: 1500,
    );
    setState(() {});
  }

  void _pickImageGallery() async {
    ImagePicker _picker = ImagePicker();
    picture = await _picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 2500,
      maxWidth: 1500,
    );
    setState(() {});
  }
}
