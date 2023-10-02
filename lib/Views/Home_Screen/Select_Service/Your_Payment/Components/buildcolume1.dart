import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/AppColors.dart';
import '../../../../../Widgets/custom_richtext.dart';

Column buildColumn1() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: "Service List",
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.black),
        SizedBox(height: 5.h,),
        Divider(thickness: 2),
        SizedBox(height: 14.h,),
        CustomRichText(
            text:
            "Man’s Short Hair Cut                   20 min",
            color: AppColor.grey,
            text1: "    \$30"),
        SizedBox(height: 14.h,),
        CustomRichText(
            text:
            "Hair Spa                                       15 min",
            color: AppColor.grey,
            text1: "    \$25"),
        SizedBox(height: 14.h,),
        CustomRichText(
            text:
            "Oii Treatment                               20 min",
            color: AppColor.grey,
            text1: "    \$20"),
        SizedBox(height: 14.h,),
        CustomRichText(
            text:
            "CGST                                              ",
            color: AppColor.grey,
            text1: "               \$15"),
        SizedBox(height: 14.h,),
        CustomRichText(
            text:
            "SGST                                              ",
            color: AppColor.grey,
            text1: "               \$10"),

      ]);
}