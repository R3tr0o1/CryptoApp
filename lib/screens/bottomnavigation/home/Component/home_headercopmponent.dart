import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {


  



  @override
  Widget build(BuildContext context) {
    return Row(
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
                'Angelica',
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
    );
  }
}
