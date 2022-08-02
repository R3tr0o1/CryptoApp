import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myapp/Common/sizedbox.dart';
import 'package:myapp/screens/BottomNavigation/Home/Notification/notification.dart';

import 'Component/Home_Watchlistcomponent.dart';

import 'Component/home_portfoliocomponent.dart';

import 'Component/home_assetComponent.dart';

class DashboardScreen extends StatefulWidget {
  final String? fullnamehome;
  DashboardScreen({Key? key, required this.fullnamehome}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('asset/image/Ellipse.png'),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good morning,',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffBEBEBE),
                        height: 1.25.h),
                  ),
                  Text(
                    widget.fullnamehome.toString(),
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff152C07)),
                  )
                ],
              ),
            ),
          ],
        ),
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
