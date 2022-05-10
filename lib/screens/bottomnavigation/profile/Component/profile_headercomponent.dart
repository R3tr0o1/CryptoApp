// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:myapp/models/user.dart';

class ProfileHEader extends StatefulWidget {
  final String fullName;
  ProfileHEader({
    Key? key,
    required this.fullName,
  }) : super(key: key);

  @override
  State<ProfileHEader> createState() => _ProfileHEaderState();
}

class _ProfileHEaderState extends State<ProfileHEader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        CircleAvatar(
          backgroundImage: const AssetImage(
            'asset/image/Bigavatar.png',
          ),
          radius: 40.r,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          widget.fullName,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 32.sp,
              height: 1.25.h),
        ),
        SizedBox(
          height: 24.h,
        ),
        Stack(
          children: [
            Container(
              height: 140.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xff5EDE99),
                          const Color(0xff4DC885).withOpacity(0.8),
                          const Color(0xff4DC885).withOpacity(0.8),
                        ])),
                height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(24.w, 26.h, 0.w, 0.h),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Balance ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Mulish',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "= Rp.360.242.500",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Mulish',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40.w, bottom: 28.h),
                            child: Text(
                              "\$25,000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 75.h,
                left: 48.w,
                child: Container(
                  height: 66.h,
                  width: 265.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 32.w),
                          child: Column(
                            children: [
                              Image.asset('asset/image/Download.png'),
                              Text(
                                'Withdraw',
                                style: TextStyle(
                                    color: const Color(0xff33D587),
                                    fontFamily: 'MUlish',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Image.asset('asset/image/divider.png'),
                        SizedBox(
                          width: 41.w,
                        ),
                        Column(
                          children: [
                            Image.asset('asset/image/Plus.png'),
                            Text(
                              'Deposit',
                              style: TextStyle(
                                  color: const Color(0xff33D587),
                                  fontFamily: 'MUlish',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
      ],
    );
  }
}
