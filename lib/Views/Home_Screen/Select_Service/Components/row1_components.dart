import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowComponents1 extends StatelessWidget {
  const RowComponents1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
          height: 32.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.r), color: AppColor.grey1),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "2.5",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20.sp,
                ),
              ]),
        ),
        SizedBox(width: 5.w,),
        CustomContainer(
          height: 32.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.r), color: AppColor.grey1),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "3.5",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20.sp,
                ),
              ]),
        ),
        SizedBox(width: 5.w,),
        CustomContainer(
          height: 32.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.r), color: AppColor.grey1),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "4.5",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20.sp,
                ),
              ]),
        ),
        SizedBox(width: 5.w,),
        CustomContainer(
          height: 32.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.r), color: AppColor.grey1),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "5.5",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20.sp,
                ),
              ]),
        ),
      ],
    );
  }
}
