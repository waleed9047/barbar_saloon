import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/AppColors.dart';
import '../../../../Widgets/customtext.dart';

Row buildRow1() {
  return Row(children: [
    CustomText(text: "Time", fontSize: 16.sp, fontWeight: FontWeight.w700, color: AppColor.black),
    Spacer(),
    Icon(Icons.circle,color: AppColor.background2,size: 10.sp,),
    SizedBox(width: 3.w,),
    CustomText(text: "Selected", fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColor.grey1),
    SizedBox(width: 8.w,),
    Icon(Icons.circle,color: AppColor.grey,size: 10.sp,),
    SizedBox(width: 3.w,),
    CustomText(text: "Available", fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColor.grey1),
    SizedBox(width: 8.w,),
    Icon(Icons.circle,color: Colors.green,size: 10.sp,),
    SizedBox(width: 3.w,),
    CustomText(text: "Booked", fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColor.grey1),

  ],);
}