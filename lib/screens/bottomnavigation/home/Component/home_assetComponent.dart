import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Common/colors.dart';

class YourAsset extends StatelessWidget {
  const YourAsset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Your assets',
              style: TextStyle(
                  color: const Color(0xff152C07),
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 200.w),
              child: Text(
                'view all',
                style: TextStyle(
                    color: const Color(0xff5EDE99),
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 125.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                      height: 119.h,
                      width: 191.w,
                      decoration: BoxDecoration(
                          color: kCardcolor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 16.h, 0.w, 0.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF7F7F7),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'asset/image/Bitcoin.png'),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'BTC',
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                          color: const Color(0xff152C07)),
                                    ),
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp,
                                          color: const Color(0xff5D5C5D)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff00CB6A),
                                  ),
                                  height: 28.h,
                                  width: 70.w,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'asset/image/arrowwhite.png',
                                          height: 12.h,
                                          width: 12.w,
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
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Divider(
                              height: 0.h,
                              thickness: 0.3.h,
                              endIndent: 16.w,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Portfolio',
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffBEBEBE)),
                                    ),
                                    Text(
                                      '\$26.46',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          color: const Color(
                                            0xff152C07,
                                          )),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 58.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: Text(
                                    '0.0012 BTC',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                        color: const Color(
                                          0xff5D5C5D,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                      height: 119.h,
                      width: 191.w,
                      decoration: BoxDecoration(
                          color: kCardcolor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8.w, 16.h, 0.w, 0.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF7F7F7),
                                      image: const DecorationImage(
                                        image:
                                            AssetImage('asset/image/eth.png'),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'ETH',
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                          color: const Color(0xff152C07)),
                                    ),
                                    Text(
                                      'Etherium',
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp,
                                          color: const Color(0xff5D5C5D)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: const Color(0xff00CB6A),
                                  ),
                                  height: 28.h,
                                  width: 70.w,
                                  child: Row(
                                    children: [
                                      Image.asset('asset/image/arrowwhite.png'),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        '15.3%',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          height: 1.25.h,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Divider(
                              height: 0.h,
                              thickness: 0.3.h,
                              endIndent: 16.w,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Portfolio',
                                      style: TextStyle(
                                          fontFamily: 'Mulish',
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffBEBEBE)),
                                    ),
                                    Text(
                                      '\$37.30',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          color: const Color(
                                            0xff152C07,
                                          )),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 58.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.w),
                                  child: Text(
                                    '0.009 ETH',
                                    style: TextStyle(
                                        fontSize: 10.w,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w700,
                                        color: const Color(
                                          0xff5D5C5D,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
