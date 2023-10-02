import 'package:barbar_saloon/Utils/AppColors.dart';
import 'package:barbar_saloon/Utils/appimages.dart';
import 'package:barbar_saloon/Views/Home_Screen/Component/barbar_name_component.dart';
import 'package:barbar_saloon/Views/Home_Screen/Component/cataories_component.dart';
import 'package:barbar_saloon/Views/Home_Screen/catagories.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:barbar_saloon/Widgets/customtextfoamfield.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Popular _Barbar/popular_barbar.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.grey1,
      appBar: AppBar(
        backgroundColor: AppColor.grey1,
        title: CustomText(
            text: 'Ibne Riead',
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: AppColor.black),
        leading: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
          ),
          child: Image(image: AssetImage(AppImages.appbarlogo)),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: AppColor.grey1,
            child: Icon(Icons.add_alert, color: AppColor.black),
          )
        ],
      ),
      body: Stack(children: [
        Positioned(
          top: 12.h,
          child: Container(
            height: 770.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r)),
                color: AppColor.background2),
            child: Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
              child: Container(
                  height: 50.h,
                  width: 327.w,
                  child: CustomTextFoamField(
                    hintText: "Search",
                    fillColor: AppColor.white,
                    prefixIcon: Icon(Icons.search, color: AppColor.background2),
                    suffixIcon:
                        Icon(Icons.settings, color: AppColor.background2),
                  )),
            ),
          ),
        ),
        Positioned(
          top: 110.h,
          child: Container(
            width: 375.w,
            height: 1007.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.r),
                    topLeft: Radius.circular(35.r)),
                color: AppColor.white),
            child: Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w, ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 142.h,
                      width: 312.w,
                      color: AppColor.white,
                      child: Image(image: AssetImage(AppImages.group1),fit: BoxFit.fill),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 20.w,top: 24.h),
                      child: Row(
                        children: [
                          CustomText(
                              text: "Categories",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.black),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Catagories(),));
                            },
                            child: CustomText(

                                text: "View All",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    CatagoriesComponent(),
                    Padding(
                      padding:  EdgeInsets.only(top: 24.h,right: 20.w),
                      child: Row(
                        children: [
                          CustomText(
                              text: "Freelance Barbars",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.black),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Popular_barbar(),));
                            },
                            child: CustomText(
                                text: "View All",
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1000.h,
                      child: Listviewbuilder_component(),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: AppColor.grey,
              selectedItemColor: AppColor.background2,
              currentIndex: 0,
              items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.location_on),label: "Location"),
            BottomNavigationBarItem(icon: Icon(Icons.book_online_outlined),label: "Booking"),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    ));
  }
}
