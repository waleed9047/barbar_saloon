import 'package:barbar_saloon/Utils/appcolors.dart';
import 'package:barbar_saloon/Views/Home_Screen/Component/cataories_component.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/customtext.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.grey1,
      appBar: buildAppBar("Popular Barber",AppColor.background1),
      body: Stack(children: [
        Positioned(
          top: 12.h,
          child: Container(

            height: 750.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.r),
                    topLeft: Radius.circular(35.r)),color: AppColor.white),
            child: Padding(
              padding:  EdgeInsets.only(left: 24.w,top: 24.h,bottom: 600.h),
              child: CatagoriesComponent(),
            ),
          ),
        )
      ]),
    ));
  }
}
