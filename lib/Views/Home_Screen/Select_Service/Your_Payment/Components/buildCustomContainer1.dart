import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/AppColors.dart';
import '../../../../../Widgets/custom_contanier.dart';
import '../../../../../Widgets/custom_richtext.dart';


CustomContainer buildCustomContainer1(
String text1,
    String text2,


    ) {

  return CustomContainer(
    height: 50.h,
    width: 327.w,
    decoration: BoxDecoration(
        border: Border.all(color: AppColor.black),
        borderRadius: BorderRadius.circular(8.r),
        color: AppColor.white),
    child: Padding(
      padding:  EdgeInsets.only(top: 13.h,left: 10),
      child: CustomRichText(
        text: text1,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.grey,
        text1: text2,fontSize1: 16.sp,
        fontWeight1: FontWeight.w600,),
    ),
  );
}