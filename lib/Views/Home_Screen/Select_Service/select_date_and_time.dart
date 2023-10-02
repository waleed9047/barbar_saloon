import 'package:barbar_saloon/Views/Home_Screen/Select_Service/select_date_and_time2.dart';
import 'package:barbar_saloon/Widgets/buildAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../Utils/AppColors.dart';
import '../../../Widgets/customButton.dart';
import '../../../Widgets/custom_contanier.dart';
import '../../../Widgets/customtext.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'Components/row1_components.dart';
import 'Components/row2_components.dart';
import 'Components/row3_components.dart';



class SelectDateAndTime extends StatefulWidget {
  const SelectDateAndTime({super.key});

  @override
  State<SelectDateAndTime> createState() => _SelectDateAndTimeState();
}

class _SelectDateAndTimeState extends State<SelectDateAndTime> {
  double value1 = 40.0;
  int currentvalue = 20;
  int currentvalue1 = 19;
  String dropdownValue = "Hair Cut";
  List<String> list = <String>[
    'Hair Cut',
    'Short',
    'Medium',
    'Tuner',
    'Special'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar("Select Date & Time", AppColor.grey1),
      body: Stack(children: [
        Container(
          width: 375.w,
          height: 1000.h,
          color: AppColor.background2,
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, left: 90, bottom: 600),
            child: Row(
              children: [
                NumberPicker(
                  minValue: 0,
                  maxValue: 50,
                  value: currentvalue,
                  onChanged: ((value) => setState(() {
                        currentvalue = value;
                      })),
                ),
                NumberPicker(
                  minValue: 0,
                  maxValue: 100,
                  value: currentvalue1,
                  onChanged: ((value) => setState(() {
                        currentvalue1 = value;
                      })),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 225.h,
          child: Container(
              height: 1000.h,
              width: 375.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.r),
                      topRight: Radius.circular(35.r)),
                  color: AppColor.white),
              child: Padding(
                padding: EdgeInsets.only(top: 18.h, left: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownMenu<String>(
                      width: 327.w,
                      initialSelection: dropdownValue,
                      onSelected: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries:
                          list.map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                            trailingIcon: const Row(children: [
                              Text(
                                "20 min",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "30",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.circle,
                                color: Colors.grey,
                              )
                            ]),
                            value: value,
                            label: value);
                      }).toList(),
                    ),
                    SizedBox(height: 26.h,),
                    CustomText(
                        text: "Price Range",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.black),

                    Padding(
                      padding:  EdgeInsets.only(right: 30.w,top: 10.h),
                      child: SfSlider(
                        showDividers: true,
                        min: 0.0,
                        max: 100.0,
                        showTicks: true,
                        showLabels: true,
                        minorTicksPerInterval: 1,
                        interval: 20,
                        value: value1,
                        onChanged: (value) => setState(() {
                          value1 = value!;
                        }),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    CustomText(
                        text: "Ratings",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.black),
                    SizedBox(height: 10.h,),
                    RowComponents1(),
                    SizedBox(height: 25.h,),
                    CustomText(
                        text: "Availability",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.black),
                    SizedBox(height: 10.h,),
                    RowComponents2(),
                    SizedBox(height: 25.h,),
                    CustomText(
                        text: "Distance",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.black),
                    SizedBox(height: 10.h,),
                    RowComponents3(),

                  ],
                ),
              )),
        ),
      ]),
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
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SelectDateAndTime2(),));
                 },

                text: "Post Request for Barbar")),
          ),
    ));
  }
}
