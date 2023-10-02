import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {

  double? height;
  double? width;
  Decoration? decoration;
  Color? color;
  Widget? child;
   CustomContainer({
     required this.height,
     required this.width,
      this.color,
     this.decoration,
     this.child,
     super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
       color:color ,
      decoration: decoration,
      child:child,
    );
  }
}
