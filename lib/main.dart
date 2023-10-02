import 'package:barbar_saloon/Views/Home_Screen/Component/gridviewbuild_component.dart';
import 'package:barbar_saloon/Views/Home_Screen/Popular%20_Barbar/popular_barbar.dart';
import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/saloon_details1.dart';
import 'package:barbar_saloon/Views/Home_Screen/Saloon_Details/saloon_details2.dart';
import 'package:barbar_saloon/Views/Home_Screen/barbar_detail.dart';
import 'package:barbar_saloon/Views/Home_Screen/home_screen.dart';
import 'package:barbar_saloon/Views/Home_Screen/select_barbar.dart';
import 'package:barbar_saloon/Views/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Views/Create_Password/create_password.dart';
import 'Views/Forgot_Password/forgot1.dart';
import 'Views/Forgot_Password/forgot2.dart';
import 'Views/Home_Screen/Saloon_Details/saloon_details3.dart';
import 'Views/Home_Screen/Select_Service/Your_Payment/Add_New_Card/add_new_card.dart';
import 'Views/Home_Screen/Select_Service/Your_Payment/Add_New_Card/book_sucessfull.dart';
import 'Views/Home_Screen/Select_Service/Your_Payment/your_payment.dart';
import 'Views/Home_Screen/Select_Service/select_date_and_time.dart';
import 'Views/Home_Screen/Select_Service/select_date_and_time2.dart';
import 'Views/Home_Screen/Select_Service/select_service.dart';
import 'Views/Home_Screen/catagories.dart';
import 'Views/Sign_Up/sign_up.dart';
import 'Views/Splash_Screen/splash_screen.dart';

void main() {
  runApp(const Barbar_Saloon());
}

class Barbar_Saloon extends StatelessWidget {
  const Barbar_Saloon({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Barbar Saloon',
          home: SplashScreen(),
        );
      },
    );
  }
}
