import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Forgot_Password/forgot1.dart';
import 'package:barbar_saloon/Views/Home_Screen/select_barbar.dart';
import 'package:barbar_saloon/Views/Sign_Up/sign_up.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/custom_richtext.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/custom_circular_avatar.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.background1,
      appBar: buildAppBar('Log in',AppColor.background1),
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
                  "Sign Up to access all the features in \n              Barber Shop",
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
              padding:  EdgeInsets.only(left: 24.w,right: 24.w,top: 24.h),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                CustomText(
                    text: "Email / Phone Number",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                CustomTextFoamField(
                  hintText: "Enter email/phone number",
                  fillColor: AppColor.white,
                ),
                SizedBox(height: 10.h,),
                CustomText(
                    text: "Password",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                    SizedBox(height: 5.h,),
                CustomTextFoamField(
                  hintText: "Enter your password",
                  fillColor: AppColor.white,
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
                    SizedBox(height: 15.h,),
                Row(children: [
                  Switch(value: false, onChanged: (value) {},),
                  CustomText(text: "Save Me", fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColor.grey),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot1(),));
                      },
                      child: CustomText(text: "Forgot Password?", fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColor.background2)),
                ],),
                    SizedBox(height: 24.h,),
                CustomButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Select_Barbar(),));
                    },
                    text: "Log in"),

                Padding(
                  padding:  EdgeInsets.only(top: 24.h,left: 25.w),
                  child: Row(
                    children: [

                      Container(
                        width: 90.w,
                        height: 3.h,
                        color: Colors.black,
                      ),SizedBox(width: 5.w,),
                      CustomText(
                          text: "Or Sign in with",
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
                    SizedBox(height: 20.h,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CustomCircular(image: AppImages.Facebook),
                    CustomCircular(image: AppImages.google),
                    CustomCircular(image: AppImages.twitter),
                    CustomCircular(image: AppImages.insta),
                  ],),
                    SizedBox(height: 24.h,),
                Center(child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                    },
                    child: CustomRichText(text: "Don’t have an account?", text1: "SIGN UP")))
              ]),
            ),
          ),
        )
      ]),
    ));
  }


}
