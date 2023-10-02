import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/Component/drordown_component.dart';
import 'package:barbar_saloon/Views/Home_Screen/Select_Service/select_date_and_time.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/AppColors.dart';
import '../../../Widgets/buildAppBar.dart';
import '../../../Widgets/custom_contanier.dart';


class SelectService extends StatelessWidget {
  const SelectService({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: buildAppBar("Select Services", AppColor.grey1),
      body: Padding(
        padding:  EdgeInsets.only(top: 20.h,left: 35.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownMenuExample(),
          ],
        ),
      ),
      bottomSheet: CustomContainer(
        height: 70.h,
        width: 375.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.r),
                topRight: Radius.circular(35.r)),
            color: AppColor.white),
        child: Center(child: CustomButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectDateAndTime(),));
            },
            text: "Continue")),
      ),
    ));
  }
}
