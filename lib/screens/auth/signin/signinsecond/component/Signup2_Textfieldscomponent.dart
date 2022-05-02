import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Common/authtextformfiel.dart';

class Signup2Textfiel extends StatefulWidget {
  const Signup2Textfiel({Key? key}) : super(key: key);

  @override
  State<Signup2Textfiel> createState() => _Signup2TextfielState();
}

class _Signup2TextfielState extends State<Signup2Textfiel> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Email',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                fontWeight: FontWeight.w500, height: 1.25, fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CommonAuthTextField(
          controller: emailcontroller,
          hinttext: 'Enter Email',
        ),
        const SizedBox(height: 13),
        Text(
          'Password',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.25,
            ),
          ),
        ),
        const SizedBox(height: 9),
        CommonAuthTextField(
          controller: passwordcontroller,
          hinttext: 'Enter Passsword',
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Confirm Password',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1.25,
            ),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        CommonAuthTextField(
            hinttext: 'Confirm Password',
            controller: confirmpasswordcontroller),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset('asset/image/box.png')),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "I agree to  ",
                  style: const TextStyle(
                      height: 1.3,
                      fontSize: 12,
                      color: Color(
                        0xff000000,
                      ),
                      fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: 'Terms and Conditions, Privacy Policy',
                      style: const TextStyle(
                        height: 1.3,
                        color: Color(
                          0xff5EDE99,
                        ),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Mulish',
                        fontSize: 12,
                      ),
                    ),
                    const TextSpan(
                      text: '\nand',
                      style: TextStyle(
                        height: 1.3,
                        color: Color(
                          0xff000000,
                        ),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Mulish',
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: ' Content Policy',
                      style: const TextStyle(
                        height: 1.3,
                        color: Color(
                          0xff5EDE99,
                        ),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Mulish',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 27,
        ),
      ],
    );
  }
}
