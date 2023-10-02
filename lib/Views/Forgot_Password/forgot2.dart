import 'package:barbar_saloon/Views/Create_Password/create_password.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/custom_richtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../Utils/AppColors.dart';
import '../../Widgets/customtext.dart';

class Forgot2 extends StatelessWidget {
  const Forgot2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar('Forgot Password',AppColor.background1),
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
                      "Please check your email to take 6 digit \n             code for continue",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white),
            ),
          ),
        ),
        Positioned(
          top: 96.h,
          child: Container(height: 650.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
                color: AppColor.white),
          child: Padding(
            padding:  EdgeInsets.only(top: 24.h,right: 25.w,left: 25.w),
            child: Column(children: [

              Pinput(
                length: 6,
                keyboardType: TextInputType.phone,
                focusedPinTheme: PinTheme(decoration: BoxDecoration(color: AppColor.white)),
              ),
              SizedBox(height: 15.h,),
              CustomText(text: "00:56", fontSize: 16.sp, fontWeight: FontWeight.w700, color: AppColor.black),
              SizedBox(height: 15.h,),
              CustomRichText(text: "Didn’t receive code?", text1: " Resend Code"),
              SizedBox(height: 70.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Create_Password(),));
                  },
                  child: CustomButton(text: "Send"))
            ]),
          ),
          ),
        ),
      ]),
    ));
  }
}
