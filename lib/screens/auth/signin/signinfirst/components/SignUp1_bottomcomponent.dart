import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/screens/Auth/Signup/Signup2/Signup2.dart';

import '../../../../../Common/AuthButton.dart';
import '../../../Login/AuthorizationScreen.dart';

class SignUpBottom1Screen extends StatefulWidget {
  const SignUpBottom1Screen({Key? key}) : super(key: key);

  @override
  State<SignUpBottom1Screen> createState() => _SignUp1ScreenState();
}

class _SignUp1ScreenState extends State<SignUpBottom1Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 27,
        ),
        CommonAuthButton(
          text: 'NEXT',
          onPressed: () {
            Get.offAll(const SignInScreen());
          },
        ),
        const SizedBox(
          height: 23,
        ),
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
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.offAll(const AuthorizationScreen());
                    },
                  text: 'Sign in here ',
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
        const SizedBox(
          height: 56,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(const SignInScreen());
                  },
                text: 'Skip  this step  ',
                style: const TextStyle(
                    height: 1.3,
                    color: Color(
                      0xffBEBEBE,
                    ),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Mulish',
                    fontSize: 12,
                    decoration: TextDecoration.underline),
              ),
            ),
            Image.asset('asset/image/rightarrow.png')
          ],
        ),
      ],
    );
  }
}
