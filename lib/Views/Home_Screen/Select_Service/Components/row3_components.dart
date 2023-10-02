import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/AppColors.dart';
import '../../../../Widgets/custom_contanier.dart';
import '../../../../Widgets/customtext.dart';



class RowComponents3 extends StatelessWidget {
  const RowComponents3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomContainer(
        height: 30.h,
        width: 50.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(117.r),
            color: AppColor.background2),
        child: Center(
            child: CustomText(
                text: "Any",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.white)),
      ),
      SizedBox(width: 5.w,),
      CustomContainer(
        height: 30.h,
        width: 60.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(117.r),
            color: AppColor.grey1),
        child: Center(
            child: CustomText(
                text: "10 mi",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black)),
      ),
      SizedBox(width: 5.w,),
      CustomContainer(
        height: 30.h,
        width: 60.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(117.r),
            color: AppColor.grey1),
        child: Center(
            child: CustomText(
                text: "3.0 mi",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black)),
      ),
      SizedBox(width: 5.w,),
      CustomContainer(
        height: 30.h,
        width: 60.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(117.r),
            color: AppColor.grey1),
        child: Center(
            child: CustomText(
                text: "4.0 mi",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black)),
      ),

    ],);
  }
}
