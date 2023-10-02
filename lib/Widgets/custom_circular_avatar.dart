import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircular extends StatelessWidget {
  String image;
  Color? backgroundColor;
   CustomCircular({
     required this.image,
     this.backgroundColor,
     super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(

      backgroundColor: backgroundColor,
      child: Center(child: Image(image: AssetImage(image),),
      ),
    );
  }
}
