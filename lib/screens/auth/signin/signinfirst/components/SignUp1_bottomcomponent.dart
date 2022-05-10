import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Common/authbutton.dart';
import '../../../Login/authorizationScreen.dart';
import '../../signinsecond/Signup2.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text.rich(
              TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () {},
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
