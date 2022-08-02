import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Common/colors.dart';
import 'package:myapp/screens/BottomNavigation/bottomnavigation.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
            onPressed: () {
              setState(() {
                Get.offAll(NavigationScreen(
                  fullNameforprofile: '',
                ));
              });
            },
            icon: Image.asset('asset/image/back.png')),
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              height: 1.25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              height: 94,
              width: 345,
              decoration: BoxDecoration(
                color: kCardcolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffE0FFF0),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('asset/image/portfolio.png'))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Portfolio Increase',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish'),
                      ),
                      Text(
                        '1.1% increase in Bitcoin assets ',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5C5D)),
                      ),
                      Text(
                        '29 November 2021 (13.00)',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBEBEBE)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 94,
              width: 345,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffE0FFF0),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('asset/image/tick.png'))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Successful Transaction',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish'),
                      ),
                      Text(
                        'Purchase of 0.00001 worth of bitcoins was \n successfully made ',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5C5D)),
                      ),
                      Text(
                        '29 November 2021 (13.00)',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBEBEBE)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 94,
              width: 345,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFCE0),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('asset/image/clock.png'))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Transaction Processed',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish'),
                      ),
                      Text(
                        'Replenishment of \$10 balance pending' '\n payment ',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5C5D)),
                      ),
                      Text(
                        '29 November 2021 (13.00)',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBEBEBE)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 94,
              width: 345,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffE0FFF0),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('asset/image/tick.png'))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Payment Successful ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish'),
                      ),
                      Text(
                        'The \$10 balance has been successfully filled ',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5C5D)),
                      ),
                      Text(
                        '29 November 2021 (13.00)',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBEBEBE)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 94,
              width: 345,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFE0E0),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('asset/image/X.png'))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Transaction failed',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish'),
                      ),
                      Text(
                        '\$10 balance failed',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D5C5D)),
                      ),
                      Text(
                        '29 November 2021 (13.00)',
                        style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBEBEBE)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
