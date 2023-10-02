import 'dart:async';

import 'package:barbar_saloon/Utils/appcolors.dart';
import 'package:barbar_saloon/Views/Login/Login.dart';
import 'package:barbar_saloon/Views/Sign_Up/sign_up.dart';
import 'package:barbar_saloon/Widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.background1,
      body: Center(
          child: CustomText(
              text: "LOGO",
              fontSize: 36.sp,
              fontWeight: FontWeight.w700,
              color: AppColor.black)),
    ));
  }
}
