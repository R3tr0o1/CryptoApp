import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class commoncryptocard extends StatelessWidget {
  final String shorttext;
  final String text;
  final String value;
  final String percent;
  final ImageProvider<Object> image;
  final Color color;
  final String arrowimage;

  const commoncryptocard({
    Key? key,
    required this.shorttext,
    required this.text,
    required this.value,
    required this.percent,
    required this.image,
    required this.color,
    required this.arrowimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        elevation: 0.0,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 12.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 64.h,
              width: 64.w,
              decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  image: DecorationImage(
                    image: image,
                  ),
                  borderRadius: BorderRadius.circular(10.r)),
            ),
            // SizedBox(
            //   width: 16.w,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shorttext,
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Color(0xff152C07)),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Color(0xff5D5C5D)),
                ),
              ],
            ),
            // SizedBox(
            //   width: 30.w,
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$' + value,
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r), color: color),
                  height: 22.h,
                  width: 55.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      Image.asset(arrowimage),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        percent,
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
            )
          ]),
        ),
      ),
    );
  }
}
