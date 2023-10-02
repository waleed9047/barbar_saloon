import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:barbar_saloon/Utils/appimages.dart';

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key});
  List dataimage = [
    AppImages.r1,
    AppImages.r2,
    AppImages.r3,
    AppImages.r4,
    AppImages.r5,
    AppImages.r6
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2),
      scrollDirection: Axis.vertical,

      itemCount: dataimage.length,
      itemBuilder: (context, index) {
        return Container(width: 155.w, height: 155.h,

        child: Image(image: AssetImage(dataimage[index]),fit: BoxFit.fill),
        );
      },
    );
  }
}
