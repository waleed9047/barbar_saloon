import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRichText extends StatelessWidget {
  String text;
  String text1;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  double? fontSize1;
  FontWeight? fontWeight1;
  Color? color1;

  CustomRichText({
    required this.text,
    required this.text1,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontSize1,
    this.fontWeight1,
    this.color1,
    super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color),
      ),
      TextSpan(
        text: text1,
        style: TextStyle(
            fontSize: fontSize1,
            fontWeight: fontWeight1,
            color: color1),
      )
    ]));
  }
}
