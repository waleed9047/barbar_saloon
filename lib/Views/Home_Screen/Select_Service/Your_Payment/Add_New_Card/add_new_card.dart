import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Widgets/customButton.dart';
import '../../../../../Widgets/customtext.dart';
import 'book_sucessfull.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.grey1,
      appBar: buildAppBar("Add New Card", AppColor.grey),
      body: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: CustomContainer(
          height: 750.h,
          width: 375.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.r),
                  topLeft: Radius.circular(35.r)),
              color: AppColor.white),
          child: Padding(
            padding: EdgeInsets.only(top: 24.h, right: 24.w, left: 24.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Select Your Card",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black),
                  SizedBox(
                    height: 16.h,
                  ),
                  Image(image: AssetImage(AppImages.atm1)),
                  ListTile(
                    leading: Icon(Icons.check_box, color: AppColor.background2),
                    title: CustomText(
                        text: "Use as the payment methord",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Image(image: AssetImage(AppImages.atm2)),
                  ListTile(
                    leading: Icon(
                      Icons.check_box_outline_blank,
                    ),
                    title: CustomText(
                        text: "Use as the payment methord",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey1),
                  ),
                ]),
          ),
        ),
      ),
      bottomSheet: CustomContainer(
        height: 90.h,
        width: 375.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r)),
            color: AppColor.white),
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
                      return Container(
                        height: 660.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.r),
                                topLeft: Radius.circular(30.r)),
                            color: AppColor.grey1),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15.h, left: 20.w),
                            child: ListTile(
                              title: CustomText(
                                  text: "Add New Card",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.black),
                              trailing:
                                  Icon(Icons.close, color: AppColor.black),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 587.h,
                            width: 375.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.r),
                                    topLeft: Radius.circular(30.r)),
                                color: AppColor.white),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 24.h, left: 24.w, right: 24.w),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage(AppImages.atm1)),
                                    SizedBox(height: 18.h,),
                                    CustomText(
                                        text: "Card Name*",
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.black),
                                    CustomTextFoamField(
                                      hintText: "Ibne Riead",
                                      fillColor: AppColor.white,
                                    ),
                                    SizedBox(height: 18.h,),
                                    CustomText(
                                        text: "Card Number*",
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.black),
                                    CustomTextFoamField(
                                      hintText: "1233 3344",
                                      fillColor: AppColor.white,
                                    ),
                                    SizedBox(height: 18.h,),
                                    Row(
                                      children: [
                                        CustomText(
                                            text: "Expiry Date*",
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black),
                                        SizedBox(width: 100.w,),
                                        CustomText(
                                            text: "CVC / CVV*",
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black),
                                      ],
                                    ),
                                    
                                    Row(
                                      children: [
                                        Expanded(
                                            child: CustomTextFoamField(
                                                hintText: "12/24")),
                                        SizedBox(
                                          width: 17.w,
                                        ),
                                        Expanded(
                                            child: CustomTextFoamField(
                                                hintText: "*****",

                                            ))
                                      ],
                                    ),
                                    SizedBox(height: 30.h,),
                                    CustomButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => BookSucessfull(),));
                                        },
                                        text: "Save"),
                                  ]),
                            ),
                          ),

                        ]),
                      );
                    },
                  );
                },
                text: "Add New Card")),
      ),
    ));
  }
}
