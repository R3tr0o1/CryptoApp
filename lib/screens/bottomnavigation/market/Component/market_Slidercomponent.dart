import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/Common/colors.dart';

class MarketSlider extends StatefulWidget {
  const MarketSlider({Key? key}) : super(key: key);

  @override
  State<MarketSlider> createState() => _MarketSliderState();
}

class _MarketSliderState extends State<MarketSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Container(
                height: 31.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: kPrimarygreen,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                    child: Text(
                  'favourite',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700),
                )),
              ),
              SizedBox(
                width: 11.w,
              ),
              Container(
                height: 31.h,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff5EDE99),
                    ),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    'FIAT market',
                    style: TextStyle(
                        color: const Color(0xff5EDE99),
                        fontFamily: 'Mulish',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                width: 11.w,
              ),
              Container(
                height: 31.h,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff5EDE99),
                    ),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    'ETF Market',
                    style: TextStyle(
                        color: const Color(0xff5EDE99),
                        fontFamily: 'Mulish',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                width: 11.w,
              ),
              Container(
                height: 31.h,
                width: 90.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff5EDE99),
                    ),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Text(
                    'BNB Market',
                    style: TextStyle(
                        color: const Color(0xff5EDE99),
                        fontFamily: 'Mulish',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
