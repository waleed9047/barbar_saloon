import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/AppColors.dart';
import '../../../../../Utils/appimages.dart';
import '../../../../../Widgets/customtext.dart';


Row buildRow2() {
  return Row(

    children: [
      Container(
          height: 96.h,
          width: 102.w,
          child: Image(image: AssetImage(AppImages.barbar1))),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Row(
              children: [
                SizedBox(width: 15.w,),
                CustomText(
                    text: "Barbar 1",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black),
                SizedBox(
                  width: 80.w,
                ),
                Image(image: AssetImage(AppImages.arrow)),
                SizedBox(
                  width: 5.w,
                ),

                CustomText(
                    text: "5 km",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 20.h,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20.sp,
                ),
                CustomText(
                    text: "4.9",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                CustomText(
                    text: "(36)",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey),

                Padding(
                  padding:  EdgeInsets.only(left: 90.w),
                  child: Container(width: 70.w,height: 18.h,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.r),color: AppColor.lightpurple),
                    child: Center(child: CustomText(text: "Book Now",fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColor.background2)),

                  ),
                )
              ],
            ),
          )
        ],
      ),
    ],
  );
}
