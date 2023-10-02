import 'package:barbar_saloon/Views/Home_Screen/Component/barbar_name_component.dart';
import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/saloon_details1.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:barbar_saloon/Widgets/customButton.dart';

import 'package:barbar_saloon/Widgets/custom_contanier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/AppColors.dart';
import '../../../Widgets/customtext.dart';

class Popular_barbar extends StatelessWidget {
  const Popular_barbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.grey1,
      appBar: buildAppBar("Popular Barber",AppColor.background1),
      body: Stack(
        children: [
          Positioned(
            top: 12.h,
            child: CustomContainer(
              height: 750.h,
              width: 375.w,
              color: AppColor.background2,
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: ListTile(
                  leading: Icon(
                    Icons.menu,
                    color: AppColor.white,
                  ),
                  title: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Stack(
                            children: [
                              Container(
                                  height: 600,
                                  width: 375,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(35.r),
                                        topLeft: Radius.circular(35.r)),
                                    color: AppColor.grey1,
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(top: 10.h),
                                    child: ListTile(
                                      title: CustomText(
                                          text: "Sort By",
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.black),
                                      trailing: Icon(Icons.close,color: AppColor.black),
                                    ),
                                  ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 60.h),
                                child: Container(
                                  width: 375,
                                  height: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(35.r),
                                      topLeft: Radius.circular(35.r),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20.w,top: 20.h),
                                    child: Column(children: [
                                      ListTile(
                                        title: CustomText(text: "Most Popular",fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColor.black),
                                        trailing: Icon(Icons.circle,color: AppColor.background2),
                                      ),
                                      ListTile(
                                        title: CustomText(text: "Nearby Barbar",fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColor.black),
                                        trailing: Icon(Icons.circle_outlined,),
                                      ),
                                      ListTile(
                                        title: CustomText(text: "Nearby Barbar",fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColor.black),
                                        trailing: Icon(Icons.circle_outlined,),
                                      ),
                                      ListTile(
                                        title: CustomText(text: "Rating: 1-3 Star",fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColor.black),
                                        trailing: Icon(Icons.circle_outlined,),
                                      ),
                                      ListTile(
                                        title: CustomText(text: "Rating",fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColor.black),
                                        trailing: Icon(Icons.circle_outlined,),
                                      ),
                                      SizedBox(height: 30.h,),
                                      CustomButton(
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Saloon_Details1(),));
                                          },
                                          text: "Apply")
                                    ]),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: CustomText(
                        text: "Sort",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white),
                  ),
                  trailing: Icon(
                    Icons.check_box_outline_blank,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 70.h,
            child: CustomContainer(
              height: 700.h,
              width: 375.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.r),
                      topRight: Radius.circular(35.r)),
                  color: AppColor.white),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Listviewbuilder_component(),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
