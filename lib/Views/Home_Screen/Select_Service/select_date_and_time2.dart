import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/customButton.dart';
import 'Components/buildrow1.dart';
import 'Components/date_and_time_grid_components.dart';
import 'Components/date_and_time_list_components.dart';
import 'Your_Payment/your_payment.dart';

class SelectDateAndTime2 extends StatelessWidget {
  const SelectDateAndTime2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar("Select Date & Time", AppColor.grey1),
      body: Stack(children: [
        CustomContainer(
          height: 800.h,
          width: 375.w,
          color: AppColor.background2,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 10.h),
                  child: ListTile(
                    leading: CircleAvatar(
                      minRadius: 18.r,
                      maxRadius: 18.r,
                      backgroundColor: AppColor.white,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child:
                            const Icon(Icons.arrow_back_ios, color: Colors.black),
                      ),
                    ),
                    title: Center(
                        child: CustomText(
                            text: "August 2022",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.white)),
                    trailing: CircleAvatar(
                      minRadius: 18.r,
                      maxRadius: 18.r,
                      backgroundColor: AppColor.white,
                      child: const Icon(Icons.arrow_forward_ios,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 5.h),
                  child: Container(
                    height: 70.h,
                    width: 375.w,
                    child: TimeAndDate(),
                  ),
                )
              ]),
        ),
        Positioned(
          top: 160.h,
          child: Container(
            width: 375.w,
            height: 800.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.r),
                    topLeft: Radius.circular(35.r)),
                color: AppColor.white),
            child: Padding(
              padding:  EdgeInsets.only(top: 28.h,left: 24.w,right: 24.w),
              child: Column(children: [
                buildRow1(),
               SizedBox(height: 10.h),
               Container(width: 375.w,height: 700.h,
               child: DateAndTimeGrid(),
               )
              ]),
            ),
          ),
        )
      ]),
          bottomSheet: CustomContainer(
            height: 90.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r)),
                color: AppColor.white),
            child: Center(child: CustomButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>YourPayment() ,));
                 },

                text: "Continue")),
          ),
    ));
  }


}
