import 'package:flutter/material.dart';
import 'package:myapp/screens/Auth/Signup/Signup2/component/Signup2_Textfieldscomponent.dart';
import 'package:myapp/screens/Auth/Signup/Signup2/component/Signup2_headercomponent.dart';
import 'package:myapp/screens/Auth/Signup/Signup2/component/signup2_bottomcomponent.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 93, 15, 0),
        child: ListView(children: const [
          Signup2header(),
          Signup2Textfiel(),
          Signup2bottom(),
        ]),
      ),
    );
  }
}
