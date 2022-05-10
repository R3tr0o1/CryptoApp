// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:myapp/screens/BottomNavigation/Home/home.dart';
import 'package:myapp/screens/BottomNavigation/Market/market.dart';
import 'package:myapp/screens/BottomNavigation/Profile/profile.dart';

class NavigationScreen extends StatefulWidget {
  final String? fullNameforprofile;
  NavigationScreen({
    Key? key,
    required this.fullNameforprofile,
  }) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentindex = 0;

  late final Screen = [
    const DashboardScreen(),
    const MarketScreen(),
    ProfileScreen(
      fullName1: widget.fullNameforprofile.toString(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        selectedItemColor: const Color(0xff00CB6A),
        onTap: (Index) {
          setState(() {
            currentindex = Index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Image.asset(
                  'asset/image/homewhite.png',
                ),
              ],
            ),
            label: 'Home',
            activeIcon: Column(
              children: [
                Image.asset(
                  'asset/image/line.png',
                ),
                SizedBox(
                  height: 6.h,
                ),
                Image.asset(
                  'asset/image/home.png',
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/svg/market.svg'),
              label: 'Market',
              activeIcon: Column(
                children: [
                  Image.asset(
                    'asset/image/line.png',
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Image.asset('asset/image/marketgreen.png'),
                ],
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/svg/Profile.svg'),
              label: 'Profile',
              activeIcon: Column(
                children: [
                  Image.asset(
                    'asset/image/line.png',
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Image.asset(
                    'asset/image/Profile.png',
                    color: const Color(0xff00CB6A),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
