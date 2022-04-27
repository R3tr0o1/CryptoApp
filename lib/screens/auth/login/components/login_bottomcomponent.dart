import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Common/authbutton.dart';

import '../../../BottomNavigation/bottomnavigation.dart';
import '../../signin/signinfirst/SignUp.dart';

class LoginBottomComponent extends StatefulWidget {
  const LoginBottomComponent({Key? key}) : super(key: key);

  @override
  State<LoginBottomComponent> createState() => _LoginBottomComponentState();
}

class _LoginBottomComponentState extends State<LoginBottomComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Text(
          "forgot Password?",
          style: TextStyle(
              height: 1.3,
              color: Color(0xffEFBE24),
              fontWeight: FontWeight.w600,
              fontFamily: 'Mulish'),
        )),
        const SizedBox(height: 24),
        CommonAuthButton(
          text: 'Enter',
          onPressed: () {
            Get.off(const NavigationScreen());
          },
        ),
        const SizedBox(height: 24),
        Center(
          child: Text.rich(
            TextSpan(
              text: "Don't have an account yet?  ",
              style: const TextStyle(
                  height: 1.3,
                  fontSize: 12,
                  color: Color(
                    0xff5EDE99,
                  ),
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(const SignUpScreen());
                    },
                  text: 'Register here',
                  style: const TextStyle(
                      height: 1.3,
                      color: Color(
                        0xff5EDE99,
                      ),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Mulish',
                      fontSize: 12,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
