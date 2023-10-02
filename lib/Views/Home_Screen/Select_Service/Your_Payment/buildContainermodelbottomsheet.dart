import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/AppColors.dart';
import '../../../../Widgets/customtext.dart';
import 'Add_New_Card/add_new_card.dart';


class buildContainermodelbottomsheet extends StatelessWidget {
  const buildContainermodelbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 660.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.r), topLeft: Radius.circular(30.r)),
          color: AppColor.grey1),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 15.h, left: 20.w),
          child: ListTile(
            title: CustomText(
                text: "Payment Method",
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: AppColor.black),
            trailing: Icon(Icons.close, color: AppColor.black),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 585.h,
          width: 375.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r)),
              color: AppColor.white),
          child: Padding(
            padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
            child: Column(children: [
              Image(image: AssetImage(AppImages.atm1)),
              Padding(
                padding:  EdgeInsets.only(top: 24.h,bottom: 16.h),
                child: Row(
                  children: [
                    CustomText(
                        text: "Select Payment Method",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.black),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewCard(),));
                      },
                      child: CustomText(
                          text: "Add New",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey),
                    )
                  ],
                ),
              ),
              CustomContainer(
                height: 56.h,
                width: 327.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColor.black)),
                child: ListTile(
                  leading: Image(
                      image: AssetImage(AppImages.paypal),
                      width: 52.w,
                      height: 36.h),
                  title: CustomText(
                      text: "Paypal",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                  trailing: Icon(Icons.radio_button_checked,
                      color: AppColor.background2),
                ),
              ),
              SizedBox(height: 16.h,),
              CustomContainer(
                height: 56.h,
                width: 327.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColor.black)),
                child: ListTile(
                  leading: Image(
                      image: AssetImage(AppImages.paytm),
                      width: 40.w,
                      height: 15.h),
                  title: CustomText(
                      text: "Paytm",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                  trailing:
                  Icon(Icons.circle_outlined, color: AppColor.background2),
                ),
              ),
              SizedBox(height: 16.h,),
              CustomContainer(
                height: 56.h,
                width: 327.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColor.black)),
                child: ListTile(
                  leading: Image(
                      image: AssetImage(AppImages.cash),
                      height: 29.h,
                      width: 26.w),
                  title: CustomText(
                      text: "Cash On Shop",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black),
                  trailing:
                  Icon(Icons.circle_outlined, color: AppColor.background2),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}


