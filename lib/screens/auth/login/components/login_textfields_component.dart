import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Common/AuthTextformfiel.dart';

class LoginTextfields extends StatefulWidget {
  const LoginTextfields({
    Key? key,
    required this.emailcontroller,
    required this.passwordcontroller,
  }) : super(key: key);

  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;

  @override
  State<LoginTextfields> createState() => _LoginTextfieldsState();
}

class _LoginTextfieldsState extends State<LoginTextfields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          controller: widget.emailcontroller,
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
          controller: widget.passwordcontroller,
          hinttext: 'Enter Passsword',
        ),
      ],
    );
  }
}
