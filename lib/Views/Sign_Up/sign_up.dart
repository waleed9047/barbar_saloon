import 'package:barbar_saloon/Utils/appcolors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/custom_circular_avatar.dart';

import 'package:barbar_saloon/Widgets/custom_richtext.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.background1,
      appBar: buildAppBar('Sign up',AppColor.background1),
      body: Stack(

          children: [
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
                  "Sign Up to access all the features in \n              Barber Shop",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white),
            ),
          )
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
              padding:  EdgeInsets.only(left: 24.w,right: 24.w,top: 10.h),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                CustomText(
                    text: "Full Name",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                CustomTextFoamField(
                  hintText: "Enter your full name",
                  fillColor: AppColor.white,
                ),SizedBox(height: 5.h,),
                CustomText(
                    text: "Email",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                CustomTextFoamField(
                  hintText: 'Enter your email',
                  fillColor: AppColor.white,
                ),SizedBox(height: 5.h,),
                CustomText(
                    text: "Phone Number",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                IntlPhoneField(
                  decoration: InputDecoration(
                      hintText: "Enter phone number",
                      hintStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: AppColor.grey)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: AppColor.grey))),
                ),SizedBox(height: 5.h,),
                CustomText(
                    text: "Select Gender",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                CustomTextFoamField(
                  hintText: "Male",
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  fillColor: AppColor.white,
                ),SizedBox(height: 5.h,),
                CustomText(
                    text: "Password",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                CustomTextFoamField(
                  hintText: "Enter your password",
                  fillColor: AppColor.white,
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                ),SizedBox(height: 15.h,),
                CustomButton(text: "Sign up"),
                    SizedBox(height: 15.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 20.w),
                  child: Row(
                    children: [

                      Container(
                        width: 90.w,
                        height: 3.h,
                        color: Colors.black,
                      ),SizedBox(width: 5.w,),
                      CustomText(
                          text: "Or Sign up with",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black),
                      SizedBox(width: 5.w,),
                      Container(
                        width: 90.w,
                        height: 3.h,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                    SizedBox(height: 15.h,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                 CustomCircular(image: AppImages.Facebook),
                 CustomCircular(image: AppImages.google),
                 CustomCircular(image: AppImages.twitter),
                 CustomCircular(image: AppImages.insta),
                ],),SizedBox(height: 15.h,),
                Center(child: CustomRichText(text: "Have an account?", text1: " SIGN IN"))
              ]),
            ),
          ),
        ),
      ]),
    ));
  }
}
