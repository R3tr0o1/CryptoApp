import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/screens/BottomNavigation/Market/Component/Market_Cardcomponent.dart';
import 'package:myapp/screens/BottomNavigation/Market/Component/Market_Searchcomponent.dart';
import 'package:myapp/screens/BottomNavigation/Market/Component/Market_Slidercomponent.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.w, 59.h, 15.w, 0.h),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MArketSearch(),
              MarketSlider(),
              MarketCard(),
            ],
          ),
        ),
      ),
    );
  }
}
