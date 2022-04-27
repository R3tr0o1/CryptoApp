import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myapp/screens/SplashScreen/SplashScreen.dart';
import 'package:myapp/screens/auth/login/authorizationScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_) {
        return const GetMaterialApp(
          home: AuthorizationScreen(),
        );
      },
    );
  }
}
