import 'package:flutter/material.dart';
import 'package:myapp/screens/Auth/Signup/Signup%201/components/Signup1_textfieldscomponent.dart';
import 'components/SignUp1_bottomcomponent.dart';
import 'components/SignUp1_headercomponent.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 93, 15, 0),
        child: ListView(
          children: [
            Signup1header(),
            Signup1Textfield(),
            SignUpBottom1Screen()
          ],
        ),
      ),
    );
  }
}
