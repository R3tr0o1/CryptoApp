import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
            top: 40.h,
            child: SvgPicture.asset(
              'asset/svg/curve.svg',
              fit: BoxFit.contain,
              color: Colors.black.withOpacity(0.4),
              width: 383.w,
            )),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff5EDE99),
                    const Color(0xff4DC885).withOpacity(0.8),
                    const Color(0xff4DC885).withOpacity(0.8),
                  ])),
          height: 112.h,
          width: 345.w,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 26.h, 0.w, 0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Portofolio ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Mulish',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$56.98",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Mulish',
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(100.w, 40.h, 0.w, 40.h),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                  height: 32.h,
                  width: 73.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      children: [
                        Image.asset(
                          'asset/image/arrow.png',
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          '15.3%',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              height: 1.25.h,
                              color: const Color(0xFf00CB6A)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
