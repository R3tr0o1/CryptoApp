import 'package:flutter/material.dart';

import 'component/Signup2_Textfieldscomponent.dart';
import 'component/Signup2_headercomponent.dart';
import 'component/signup2_bottomcomponent.dart';

class SignInScreen extends StatefulWidget {
  final TextEditingController fullNameController;
  final TextEditingController phoneNumberController;
  SignInScreen(
      {Key? key,
      required this.fullNameController,
      required this.phoneNumberController})
      : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 93, 15, 0),
        child: ListView(children: [
          Signup2header(),
          Signup2Textfield(
            fullName: widget.fullNameController,
            phoneNumber: widget.phoneNumberController,
          ),
          Signup2bottom(),
        ]),
      ),
    );
  }
}
