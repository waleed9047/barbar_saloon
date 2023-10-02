import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Component/barbar_name_component.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'build_bottomsheet1.dart';

class CatagoriesComponent extends StatelessWidget {
  const CatagoriesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 60.h,
              width: 60.w,
              child: CircleAvatar(
                backgroundColor: AppColor.lightpink,
                child: Image(
                    image: AssetImage(AppImages.haircut),
                    height: 36.h,
                    width: 36.w),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              height: 60.h,
              width: 60.w,
              child: CircleAvatar(
                backgroundColor: AppColor.lightpurple,
                minRadius: 30.r,
                maxRadius: 30.r,
                child: Image(
                    image: AssetImage(AppImages.shave),
                    height: 36.h,
                    width: 36.w),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              height: 60.h,
              width: 60.w,
              child: CircleAvatar(
                backgroundColor: AppColor.lightblue,
                child: Image(
                    image: AssetImage(AppImages.haircolor),
                    height: 36.h,
                    width: 36.w),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            CustomText(
                text: "Hair Cut",
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.grey),
            SizedBox(
              width: 37.w,
            ),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    shape: UnderlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35.r),
                          topLeft: Radius.circular(35.r)),
                    ),
                    context: context,
                    builder: (context) {
                      return buildStack();
                    },
                  );
                },
                child: CustomText(
                    text: "Shaves",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey)),
            SizedBox(
              width: 35.w,
            ),
            CustomText(
                text: "Hair Color",
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.grey),

          ],
        )
      ],
    );
  }


}
