import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Search.dart';

class MArketSearch extends StatefulWidget {
  const MArketSearch({Key? key}) : super(key: key);

  @override
  State<MArketSearch> createState() => _MArketSearchState();
}

class _MArketSearchState extends State<MArketSearch> {
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 345.w,
      child: TextField(
        onTap: () {
          setState(() {
            Get.offAll(const SearchScreen());
          });
        },
        controller: searchcontroller,
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
            fontFamily: 'Mulish',
            height: 1.25.h,
            fontWeight: FontWeight.w600,
            color: const Color(
              0xffBEBEBE,
            ),
          ),
          suffixIcon: const Icon(Icons.search, color: Color(0xff5EDE99)),
          contentPadding: EdgeInsets.fromLTRB(14.w, 12.h, 0.w, 12.h),
          fillColor: const Color(0xffFFFFFF),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color(0xff5EDE99), width: 1.w),
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.lightGreen.shade50, width: 1.w),
          ),
        ),
      ),
    );
  }
}
