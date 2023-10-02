import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/AppColors.dart';
import '../../Widgets/customtext.dart';
import 'Component/dailog_box.dart';

class Create_Password extends StatelessWidget {
  const Create_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar("Create New Password",AppColor.background1),
      body: Stack(children: [
        Positioned(
          top: 12,
          child: Container(
            width: 375.w,
            height: 732.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                color: AppColor.background2),
            child: Padding(
              padding: EdgeInsets.only(
                top: 24.h,
                left: 56.w,
              ),
              child: CustomText(
                  text:
                      "Reset your password to recovery and \n          log in your account",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white),
            ),
          ),
        ),
        Positioned(
          top: 96.h,
          child: Container(
            height: 650.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
                color: AppColor.white),
            child: Padding(
              padding: EdgeInsets.only(top: 24.h, left: 25.w, right: 25.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "New Password",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFoamField(
                      hintText: "****",
                      fillColor: AppColor.white,
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomText(
                        text: "Confirm Password",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFoamField(
                      hintText: "Enter your password",
                      fillColor: AppColor.white,
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    CustomButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return customdialog();
                            },
                          );
                        },
                        text: "Confirm")
                  ]),
            ),
          ),
        ),
      ]),
    ));
  }


}
