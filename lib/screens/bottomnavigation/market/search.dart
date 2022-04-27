import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myapp/screens/BottomNavigation/bottomnavigation.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // The search area here
          title: Container(
            width: double.infinity,
            height: 40.h,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
            child: Center(
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff5EDE99),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.clear,
                        color: Color(0xff5EDE99),
                      ),
                      onPressed: () {
                        Get.offAll(const NavigationScreen());
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}
