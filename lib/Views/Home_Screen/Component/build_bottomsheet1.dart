import 'package:barbar_saloon/Views/Home_Screen/Component/barbar_name_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/AppColors.dart';
import '../../../Widgets/customtext.dart';



Stack buildStack() {
  return Stack(
    children: [
      Container(
        height: 600,
        width: 375,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35.r),
              topLeft: Radius.circular(35.r)),
          color: AppColor.grey1,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 10.h),
                child: Row(children: [
                  CustomText(text: "Shaves",fontSize: 18.sp,fontWeight: FontWeight.w700,color: AppColor.black),
                  Spacer(),
                  Icon(Icons.close),
                ],),
              ),

              Padding(
                padding:  EdgeInsets.only(left: 20.w,top: 2.h),
                child: CustomText(text: "Over 10 Salons", fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColor.grey),
              )
            ]),
      ),
      Padding(
        padding: EdgeInsets.only(top: 60.h),
        child: Container(
          width: 375,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(35.r),
              topLeft: Radius.circular(35.r),),
            color: Colors.white,
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: 20.w),
            child: Listviewbuilder_component(),
          ),
        ),)
    ],
  );
}