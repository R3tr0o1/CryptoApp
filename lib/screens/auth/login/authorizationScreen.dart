import 'package:flutter/material.dart';
import 'package:myapp/Common/sizedbox.dart';

import 'package:myapp/screens/Auth/Login/components/login_headercomponent.dart';

import 'components/login_bottomcomponent.dart';
import 'components/login_textfields_component.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 93, 15, 0),
        child: ListView(children: [
          const LoginHeaderComponent(),
          LoginTextfields(
              emailcontroller: emailcontroller,
              passwordcontroller: passwordcontroller),
          SpaceH34(),
          const LoginBottomComponent(),
        ]),
      ),
    );
  }
}
