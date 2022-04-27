import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTransaction extends StatefulWidget {
  const ProfileTransaction({Key? key}) : super(key: key);

  @override
  State<ProfileTransaction> createState() => _ProfileTransactionState();
}

class _ProfileTransactionState extends State<ProfileTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    color: const Color(0xffE0FFF0),
                    borderRadius: BorderRadius.circular(10.r),
                    image: const DecorationImage(
                        image: AssetImage('asset/image/transactionfile.png'))),
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
                      'Transaction List',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Mulish'),
                    ),
                    Text(
                      'Your transactions',
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
          height: 24.h,
        ),
      ],
    );
  }
}
