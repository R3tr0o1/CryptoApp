// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/Common/sizedbox.dart';

import '../../../../Common/cryptocard.dart';

class MarketCard extends StatefulWidget {
  const MarketCard({Key? key}) : super(key: key);

  @override
  State<MarketCard> createState() => _MarketCardState();
}

class _MarketCardState extends State<MarketCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const commoncryptocard(
            shorttext: 'BCT/BUSD',
            text: 'Bitcoin',
            value: '54,382.64',
            percent: '15.3',
            image: AssetImage('asset/image/bitcoinB.png'),
            color: Color(0xff00CB6A),
            arrowimage: 'asset/image/arrowwhite.png'),
        const SpaceH8(),
        const commoncryptocard(
            shorttext: 'ETH/BUSD',
            text: 'Etherium',
            value: '4,415.69',
            percent: '-6.5',
            image: AssetImage('asset/image/ethb.png'),
            color: Color(0xffF26666),
            arrowimage: 'asset/image/arrowdown.png'),
        const SpaceH8(),
        const commoncryptocard(
            shorttext: 'LTC/BUSD',
            text: 'Litecoin',
            value: '7569',
            percent: '-6.5',
            image: AssetImage('asset/image/litecoin.png'),
            color: Color(0xffF26666),
            arrowimage: 'asset/image/arrowdown.png'),
        const SpaceH8(),
        const commoncryptocard(
            shorttext: 'SOL/BUSD',
            text: 'Solana',
            value: '15.69',
            percent: '-10.5',
            image: AssetImage('asset/image/SOL.png'),
            color: Color(0xffF26666),
            arrowimage: 'asset/image/arrowdown.png'),
        const SpaceH8(),
        const commoncryptocard(
            shorttext: 'BNB/BUSD',
            text: 'Binance Coin',
            value: '415.69',
            percent: '-3',
            image: AssetImage('asset/image/BNB.png'),
            color: Color(0xffF26666),
            arrowimage: 'asset/image/arrowdown.png'),
        const SpaceH8(),
        const commoncryptocard(
            shorttext: 'XRP/BUSD',
            text: 'Ripple',
            value: '265',
            percent: '-2',
            image: AssetImage('asset/image/XRP.png'),
            color: Color(0xffF26666),
            arrowimage: 'asset/image/arrowdown.png'),
      ],
    );
  }
}
