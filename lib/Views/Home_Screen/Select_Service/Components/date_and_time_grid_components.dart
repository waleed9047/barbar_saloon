import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class DateAndTimeGrid extends StatelessWidget {
   DateAndTimeGrid({super.key});
    List dataGird = [
      ["10.00 AM",],
      ["10.15 AM",],
      ["10.30 AM",],
      ["10.45 AM",],
      ["11.00 AM",],
      ["11.15 AM",],
      ["11.30 AM",],
      ["11.45 AM",],
      ["12.00 PM",],
      ["12.15 PM",],
      ["12.30 PM",],
      ["12.45 PM",],
      ["1.00 PM",],
      ["1.15 PM",],
      ["1.30 PM",],
      ["1.45 PM",],
      ["2.00 PM",],
      ["2.15 PM",],
      ["2.30 PM",],
      ["2.45 PM",],
      ["3.00 PM",],
      ["3.15 PM",],
      ["3.30 PM",],
      ["3.45 PM",]
    ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
        mainAxisSpacing: 5.h,
          crossAxisSpacing: 5.w,
          mainAxisExtent: 35.h
        ),
        itemCount: dataGird.length,
        itemBuilder: (context, index) {
          return Container(height: 10.h,
          width: 74.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r),color: AppColor.grey1),
            child: Center(child: CustomText(text: dataGird[index][0], fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColor.background2)),
          );
        },
    );
  }
}
