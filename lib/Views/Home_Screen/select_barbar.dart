import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Component/barbar_name_component.dart';

import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Select_Barbar extends StatelessWidget {
  const Select_Barbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       appBar: AppBar(
         centerTitle: true,
           backgroundColor: AppColor.white,
         title: CustomText(text: "Select Barbar", fontSize: 18.sp, fontWeight: FontWeight.w700, color: AppColor.black)

       ),
      body: Stack(children: [
        Container(height: 750.h,width: 400.w,
            child: Center(child: Image(image: AssetImage(AppImages.rectangle1))),
        ),

        Padding(
          padding:  EdgeInsets.only(left: 20.w),
          child: Listviewbuilder_component(),
        ),
      ]),
    ));
  }
}
