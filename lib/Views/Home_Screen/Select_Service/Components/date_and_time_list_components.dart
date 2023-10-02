import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeAndDate extends StatelessWidget {
   TimeAndDate({super.key});
  List datatime = [
    ["12","Mon"],
    ["13","Tue"],
    ["14","Wed"],
    ["15","Thu"],
    ["16","Fri"],
    ["17","Sat"],
  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datatime.length,
      scrollDirection: Axis.horizontal,

      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 10),
          width: 45.w,
          height: 72.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150.r),
            color: AppColor.white,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Container(

              height: 36.h,
              width: 36.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColor.grey1),
              child: Center(
                child: CustomText(
                    text: datatime[index][0],
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.background2),
              ),
            ),
            SizedBox(height: 8.h,),
            CustomText(
                text: datatime[index][1],
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.background2)
          ]),
        );
      },
    );
  }
}
