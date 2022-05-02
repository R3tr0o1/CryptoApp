import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Common/authbutton.dart';
import '../../../../BottomNavigation/bottomnavigation.dart';

class Signup2bottom extends StatefulWidget {
  const Signup2bottom({Key? key}) : super(key: key);

  @override
  State<Signup2bottom> createState() => _signup2bottomState();
}

class _signup2bottomState extends State<Signup2bottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonAuthButton(
          text: 'READY',
          onPressed: () {
            Get.offAll(const NavigationScreen());
          },
        ),
        const SizedBox(height: 24),
        Center(
          child: Text.rich(
            TextSpan(
              text: "Already have an account?  ",
              style: const TextStyle(
                  height: 1.3,
                  fontSize: 12,
                  color: Color(
                    0xff5EDE99,
                  ),
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: 'Sign in',
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
