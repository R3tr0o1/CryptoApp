import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Common/cryptocard.dart';

class WatchList extends StatelessWidget {
  const WatchList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(right: 250.w),
          child: Text(
            'WatchList',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                fontFamily: 'Mulish',
                color: const Color(0xff152C07)),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        const commoncryptocard(
          text: 'Bitcoin',
          shorttext: 'BTC/BUSD',
          value: '54,38264',
          percent: '12%',
          image: AssetImage('asset/image/bitcoinB.png'),
          arrowimage: 'asset/image/arrowwhite.png',
          color: Color(0xff00CB6A),
        ),
        SizedBox(
          height: 8.h,
        ),
        const commoncryptocard(
          text: 'Etherium',
          shorttext: 'ETH/BUSD',
          value: '4,145.61',
          percent: '-2.1%',
          image: AssetImage('asset/image/ethb.png'),
          arrowimage: 'asset/image/arrowdown.png',
          color: Color(0xffF26666),
        ),
        SizedBox(
          height: 8.h,
        ),
        const commoncryptocard(
          text: 'Litecoin',
          shorttext: 'LTC/BUSD',
          value: '207.3',
          percent: '-1.1%',
          image: AssetImage('asset/image/litecoin.png'),
          arrowimage: 'asset/image/arrowdown.png',
          color: Color(0xffF26666),
        ),
      ],
    );
  }
}
