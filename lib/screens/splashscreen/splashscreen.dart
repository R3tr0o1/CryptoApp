import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/login/authorization_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatedhome();
  }

  _navigatedhome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Get.offAll(const AuthorizationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/image/try.png"),
          const Text(
            "MyCrypto",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w900,
                height: 1.25,
                fontFamily: 'Mulish'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
            child: Text(
              "Trusted by millions of users\nworldwide",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Mulish'),
            ),
          ),
        ],
      ),
    );
  }
}
