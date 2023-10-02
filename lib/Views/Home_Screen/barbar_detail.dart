import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Component/barbar_detail_component.dart';

import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Barbar_Detail extends StatelessWidget {
  const Barbar_Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.grey1,
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 30.h),
                  child: Row(children: [
                    CircleAvatar(
                      maxRadius: 20.r,
                      minRadius: 20.r,
                      backgroundColor: AppColor.white,
                      child: Center(
                          child: Icon(
                        Icons.arrow_back,
                        color: AppColor.black,
                      )),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                        height: 40.h,
                        width: 270.w,
                        child: CustomTextFoamField(
                          hintText: "Dhaka",
                          fillColor: AppColor.white,
                          suffixIcon: const Icon(Icons.close),
                        ))
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: Image(image: AssetImage(AppImages.rectangle1)),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 512.h),
                  child: Container(
                    width: 375.w,
                    height: 300.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.r),
                            topLeft: Radius.circular(30.r)),
                    color: AppColor.white),
                    child: BarbarDetailsComponent(),
                  ),
                )
              ],
            )));
  }
}
