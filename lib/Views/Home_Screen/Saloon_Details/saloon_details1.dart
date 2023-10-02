import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appconstains.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/saloon_details2.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/custom_circular_avatar.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Saloon_Details1 extends StatelessWidget {
  const Saloon_Details1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        CustomContainer(
            height: 900.h,
            width: 375.w,
            child: Stack(
              children: [
                Image(image: AssetImage(AppImages.saloon1)),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.white,
                        child: Icon(Icons.arrow_back, color: AppColor.black),
                      ),
                      Spacer(),
                      CircleAvatar(
                        backgroundColor: AppColor.white,
                        child: Image(
                            image: AssetImage(AppImages.heart),
                            color: AppColor.black),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColor.white,
                        child: Icon(Icons.share, color: AppColor.black),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          top: 300.h,
          child: CustomContainer(
            height: 1000.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.r),
                  topLeft: Radius.circular(35.r),
                ),
                color: AppColor.white),
            child: Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Barbar 1",
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.black),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomText(
                        text: "About me",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.black),
                    SizedBox(
                      height: 9.h,
                    ),
                    CustomText(
                        text: AppConstain.text,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                    SizedBox(height: 50,),
                    CustomButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Saloon_Details2(),));
                        },
                        text: "Book Now"),
                  ]),
            ),
          ),
        ),
      ]),
    ));
  }
}
