import 'package:barbar_saloon/Utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFoamField extends StatelessWidget {
  String? hintText;
  Color? fillColor;
  Widget? prefixIcon;
  Widget? suffixIcon;
  Widget? suffix;
  String? labelText;
  CustomTextFoamField(
      {required this.hintText,
      this.fillColor,
      this.prefixIcon,
      this.suffixIcon,
      this.suffix,
        this.labelText,
        super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      decoration: InputDecoration(

        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColor.grey)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColor.grey)
            ),

        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppColor.grey),
        prefixIcon: prefixIcon,
        suffix: suffix,
        suffixIcon: suffixIcon,
        fillColor: fillColor,
        filled: true,
        labelText: labelText,

      ),
      keyboardType: TextInputType.phone,
      obscuringCharacter: "*",
    );
  }
}
