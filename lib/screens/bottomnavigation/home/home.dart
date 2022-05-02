import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myapp/Common/sizedbox.dart';
import 'package:myapp/screens/BottomNavigation/Home/Notification/notification.dart';
import 'package:myapp/screens/BottomNavigation/Market/market.dart';
import 'package:myapp/screens/BottomNavigation/Profile/profile.dart';
import 'Component/Home_Watchlistcomponent.dart';
import 'Component/home_headercopmponent.dart';
import 'Component/home_portfoliocomponent.dart';

import 'Component/home_assetComponent.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        title: const Header(),
        actions: [
          IconButton(
            icon: Image.asset(
              'asset/image/Combined-Shape.png',
              height: 24.h,
              width: 24.w,
            ),
            onPressed: () {
              setState(() {
                Get.offAll(const NotificationScreen());
              });
            },
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.w, 16.h, 15.w, 0.h),
        child: SingleChildScrollView(
          child: Column(children: const [
            SpaceH16(),
            Portfolio(),
            SpaceH24(),
            YourAsset(),
            WatchList(),
            SpaceH8(),
          ]),
        ),
      ),
    );
  }
}
