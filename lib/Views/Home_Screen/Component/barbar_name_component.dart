import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/barbar_detail.dart';


import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Listviewbuilder_component extends StatelessWidget {
  Listviewbuilder_component({super.key});
  List data = [
    [AppImages.barbar1, "Barbar 1"],
    [AppImages.barbar2, "Barbar 2"],
    [AppImages.barbar3, "Barbar 3"],
    [AppImages.barbar4, "Barbar 4"],
    [AppImages.barbar5, "Barbar 5"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 28.h,right: 10.w),
          child: Container(
              width: 317.w,
              height: 96,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColor.white),
              child: Row(
                children: [
                  Container(
                    height: 96.h,
                    width: 102.w,
                    child: Stack(
                      children: [
                        Image(image: AssetImage(data[index][0])),

                        Padding(
                          padding:  EdgeInsets.only(top: 8.h,left: 8.w),
                          child: CircleAvatar(
                            minRadius: 10,
                            maxRadius: 10,
                            backgroundColor: AppColor.white,
                            child: Image(image: AssetImage(AppImages.heart)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Row(
                            children: [
                              CustomText(
                                  text: data[index][1],
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
                              SizedBox(width: 85.w,),
                              Container(
                                width: 80.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70.r),color:Color(0xffEEEBEBFF)),

                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Barbar_Detail(),));
                                  },
                                  child: CustomText(
                                      text: "Book Now",
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.background2),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
