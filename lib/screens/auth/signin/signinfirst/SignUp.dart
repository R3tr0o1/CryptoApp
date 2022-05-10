import 'package:flutter/material.dart';
import 'package:myapp/screens/auth/signin/signinfirst/components/Signup1_textfieldscomponent.dart';

import 'components/SignUp1_bottomcomponent.dart';
import 'components/SignUp1_headercomponent.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 93, 15, 0),
        child: ListView(
          children: const [
            Signup1header(),
            Signup1Textfield(),
            SignUpBottom1Screen()
          ],
        ),
      ),
    );
  }
}
