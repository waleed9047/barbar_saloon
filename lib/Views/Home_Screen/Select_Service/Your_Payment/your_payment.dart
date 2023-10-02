import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/custom_richtext.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/appimages.dart';
import '../../../../Widgets/customtext.dart';
import '../Components/buildrow1.dart';
import 'Components/buildCustomContainer1.dart';
import 'Components/buildcolume1.dart';
import 'Components/buildrow2.dart';
import 'buildContainermodelbottomsheet.dart';

class YourPayment extends StatelessWidget {
  const YourPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar("Your Appointment", AppColor.grey1),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            width: 375.w,
            height: 900.h,
            color: AppColor.background2,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Container(
                    width: 350.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: AppColor.white),
                    child: buildRow2(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 134.h,
            child: CustomContainer(
              height: 1000.h,
              width: 375.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.r),
                  color: AppColor.white),
              child: Padding(
                padding: EdgeInsets.only(top: 35.r, left: 24.w, right: 24.w),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildCustomContainer1(
                          "Date & Time:", "Mon,12 Aug - 10:00 AM"),
                      SizedBox(
                        height: 14.h,
                      ),
                      buildCustomContainer1("Gender Type:", " Man"),
                      SizedBox(
                        height: 14.h,
                      ),
                      CustomContainer(
                        height: 220.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.black)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10.h, left: 10.w, right: 10.w),
                          child: buildColumn1(),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomText(
                          text: "Apply Coupon",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.black),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomContainer(
                          height: 40.h,
                          width: 327.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.black),
                            borderRadius: BorderRadius.circular(35.r),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: Image(
                                    image: AssetImage(
                                      AppImages.vector,
                                    ),
                                    height: 25.h,
                                    width: 25.w),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              CustomText(
                                  text: "Enter coupon",
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.grey),
                              SizedBox(
                                width: 127.w,
                              ),
                              CustomContainer(
                                height: 40.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(35.r),
                                      bottomRight: Radius.circular(35.r)),
                                  color: AppColor.background2,
                                ),
                                child: Center(
                                    child: CustomButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            shape: OutlineInputBorder(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(30.r),
                                                    topLeft:
                                                        Radius.circular(30.r))),
                                            isScrollControlled: true,
                                            context: context,
                                            builder: (context) {
                                              return buildContainermodelbottomsheet();
                                            },
                                          );
                                        },
                                        text: "Apply")),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 24.h,
                      ),
                      CustomText(
                          text:
                              "Total Time                                                     55 Minutes",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomText(
                          text:
                              "Subtotal                                                                \$85.00",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomText(
                          text:
                              "Coupon Discount                                               -\$15.00",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(thickness: 2),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                          text:
                              "Total Price                                                           \$70.00",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black),
                    ]),
              ),
            ),
          )
        ]),
      ),
      bottomSheet: CustomContainer(
        height: 90.h,
        width: 375.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r)),
            color: AppColor.white),
        child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                CustomRichText(
                  text: "Total",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                  text1: "\n\$70.00",
                  fontSize1: 16.sp,
                  fontWeight1: FontWeight.w700,
                  color1: AppColor.black,
                ),
                SizedBox(
                  width: 55.w,
                ),
                CustomContainer(
                  height: 48.h,
                  width: 227.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(37.r),
                      color: AppColor.background2),
                  child: TextButton(
                      onPressed: () {},
                      child: CustomText(
                        text: "Pay Now",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.white,
                      )),
                )
              ],
            )),
      ),
    ));
  }
}
