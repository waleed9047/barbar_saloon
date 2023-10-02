import 'package:barbar_saloon/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
   CustomButton({
     required this.text,
     this.onPressed,
     super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 327.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.r),color: AppColor.background2),
      child: TextButton(

          onPressed: onPressed,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white),
            ),
          )),
    );
  }
}
