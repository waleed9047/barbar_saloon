import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Views/Forgot_Password/forgot2.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/buildAppBar.dart';
import '../../Widgets/customtext.dart';


class Forgot1 extends StatelessWidget {
  const Forgot1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColor.background1,
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
              padding: EdgeInsets.only(top: 24.h, left: 56.w,),
              child: CustomText(
                  text:
                  "Enter your email address and we will\n          send you code",


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
            padding:  EdgeInsets.only(top: 24.h,left: 24.w,right: 24.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              CustomText(text: "Email / Phone Number", fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColor.black),
              SizedBox(height: 10,),
              CustomTextFoamField(hintText: "Email / Phone Number",fillColor: AppColor.white,),

              SizedBox(height: 150.h,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot2(),));
                  },
                  child: CustomButton(text: "Reset Password"))
            ]),
          ),
          ),
        )
      ]),
    ));
  }


}
