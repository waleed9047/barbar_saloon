import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/saloon_details3.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/custom_richtext.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Component/drordown_component.dart';

class Saloon_Details2 extends StatefulWidget {
  const Saloon_Details2({super.key});

  @override
  State<Saloon_Details2> createState() => _Saloon_Details2State();
}

class _Saloon_Details2State extends State<Saloon_Details2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(children: [
          CustomContainer(
              height: 1050.h,
              width: 375.w,
              child: Stack(
                children: [
                  Image(

                    image: AssetImage(AppImages.saloon1),

                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
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
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: CustomContainer(
                height: 1500.h,
                width: 375.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35.r),
                      topLeft: Radius.circular(35.r),
                    ),
                    color: AppColor.white),
                child: Column(children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 24.w, top: 24.h),
                    child: ListTile(
                      title: CustomText(
                          text: "Barbar 1",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColor.black),
                      trailing: CustomContainer(
                        height: 30.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.r),
                            color: AppColor.lightpurple),
                        child: Center(
                            child: CustomText(
                                text: "Open",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.background2)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 34.w, right: 20.w, top: 20.h),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        CustomRichText(
                          text: "4.9",
                          color: AppColor.black,
                          text1: " (76 Reviews)",
                          color1: AppColor.grey1,
                        ),
                        Spacer(),
                        CustomText(
                            text: "Direction",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.background2)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomContainer(
                    height: 56.h,
                    width: 375.w,
                    color: AppColor.background2,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(
                              text: "About",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.grey1),
                          CustomText(
                              text: "Services",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Saloon_Details3(),));
                            },
                            child: CustomText(
                                text: "Gallery",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey1),
                          ),
                        ]),
                  ),
                  DropdownMenuExample(),
                ]),
              ),
            ),
          ),
        ]),
      ),
      bottomSheet: CustomContainer(
        height: 50.h,
        width: 375.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r)),
            color: AppColor.white),
        child: Center(child: CustomButton(text: "Book Now")),
      ),
    ));
  }
}
