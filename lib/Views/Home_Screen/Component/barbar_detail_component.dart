import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/home_screen.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarbarDetailsComponent extends StatelessWidget {
  const BarbarDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 24.w
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SizedBox(height: 30.h,),
          Row(

            children: [
              Container(
                  height: 96.h,
                  width: 102.w,
                  child: Image(image: AssetImage(AppImages.barbar1))),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w,),
                        CustomText(
                            text: "Barbar 1",
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
                    padding:  EdgeInsets.only(top: 10.h,right: 150.w),
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


                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h,),
          CustomText(text: "Barbar will arrive at your location at\n 12:30AM , Tuesday", fontSize: 18.sp, fontWeight: FontWeight.w400, color: AppColor.black),
          SizedBox(height: 20.h,),
          CustomButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Screen(),));
            },
            text: "Contact Barbar",)
        ],
      ),
    );
  }
}

