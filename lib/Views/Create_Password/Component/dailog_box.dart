import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/AppColors.dart';
import '../../../Utils/appimages.dart';
import '../../../Widgets/customButton.dart';
import '../../../Widgets/customtext.dart';

Dialog customdialog() {
  return Dialog(
    child: Padding(
      padding:  EdgeInsets.only(top: 30.h,bottom: 30.h,right:10.w,left: 10.w),
      child: Container(
        width: 327.w,
        height: 398.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),

            color: AppColor.white),
        child: Column(children: [
          Image(image: AssetImage(AppImages.logo1),height: 150.h,width: 150.w
          ),
          SizedBox(height: 30.h,),
          CustomText(
              text: "Password Changed",
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: AppColor.black),
          SizedBox(height: 10.h,),
          CustomText(
              text:
              "Your password has been successfully\n                          changed!",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.grey),
          SizedBox(height: 24.h,),
          CustomButton(text: "Done"),
        ]),
      ),
    ),
  );
}

