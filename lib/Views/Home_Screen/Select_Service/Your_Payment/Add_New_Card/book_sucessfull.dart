import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/saloon_details1.dart';
import 'package:barbar_saloon/Views/Home_Screen/select_barbar.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Widgets/customButton.dart';
import '../Components/buildCustomContainer1.dart';
import '../Components/buildcolume1.dart';

class BookSucessfull extends StatelessWidget {
  const BookSucessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.grey1,
      appBar: buildAppBar("Congratulation", AppColor.grey1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: CustomContainer(
            height: 855.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.r),
                    topLeft: Radius.circular(35.r)),
                color: AppColor.white),
            child: Column(children: [
              Image(image: AssetImage(AppImages.check)),
              SizedBox(height: 24.h,),
              CustomText(
                  text: "Book Sucessfull",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.black),
              SizedBox(height: 16.h,),
              CustomText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur\n            adipiscing elit. Sed faucibus ",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey1),
              SizedBox(height: 32.h,),
              buildCustomContainer1("Date & Time:", "Mon,12 Aug - 10:00 AM"),

              SizedBox(
                height: 14.h,
              ),
              buildCustomContainer1("Gender Type:", " Man"),
              SizedBox(height: 10.h,),
              CustomContainer(
                height: 220.h,
                width: 327.w,
                decoration:
                    BoxDecoration(border: Border.all(color: AppColor.black)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
                  child: buildColumn1(),
                ),
              ),
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
      ),
          bottomSheet: CustomContainer(
            height: 70.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r)),
                color: AppColor.white),
            child: Center(child: CustomButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Select_Barbar(),));
                },

                text: "Done")),
          ),
    ));
  }
}
