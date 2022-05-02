import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Auth/Login/authorizationScreen.dart';

class ProfileArrangement extends StatefulWidget {
  const ProfileArrangement({Key? key}) : super(key: key);

  @override
  State<ProfileArrangement> createState() => _ProfileArrangementState();
}

class _ProfileArrangementState extends State<ProfileArrangement> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 220.w),
          child: Text(
            'Arrangement',
            style: TextStyle(
                color: const Color(0xff152C07),
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 68.h,
          width: 330.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15.w,
                ),
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                    color: const Color(0xffE0FDFF),
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage(
                      'asset/image/Lock.png',
                    ))),
              ),
              SizedBox(
                width: 16.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Privacy',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Mulish'),
                    ),
                    Text(
                      'Change email and password',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5D5C5D)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: 68.h,
          width: 330.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15.w,
                ),
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                    color: const Color(0xffF1E0FF),
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage('asset/image/Wallet.png'))),
              ),
              SizedBox(
                width: 16.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Mulish'),
                    ),
                    Text(
                      'Update payment settings  ',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5D5C5D)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: 68.h,
          width: 330.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15.w,
                ),
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFCE0),
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage('asset/image/bell.png'))),
              ),
              SizedBox(
                width: 16.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Mulish'),
                    ),
                    Text(
                      'Change notification settings',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5D5C5D)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        GestureDetector(
          onTap: (() {
            Get.offAll(const AuthorizationScreen());
          }),
          child: Container(
            height: 68.h,
            width: 330.w,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 15.w,
                  ),
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFE0E0),
                      borderRadius: BorderRadius.circular(10.r),
                      image: const DecorationImage(
                          image: AssetImage('asset/image/door.png'))),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log out',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish'),
                      ),
                      Text(
                        'Exit the app',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff5D5C5D)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
      ],
    );
  }
}
