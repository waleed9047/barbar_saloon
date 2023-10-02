import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/AppColors.dart';
import 'customtext.dart';

AppBar buildAppBar(
    String text,
    Color? backgroundColor,

    ) {
  return AppBar(
    backgroundColor: AppColor.background1,
    centerTitle: true,
    title: CustomText(
        text: text,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.black),
    leading: CircleAvatar(
        backgroundColor: AppColor.white,
        child: Icon(Icons.arrow_back, color: AppColor.black)),

  );
}