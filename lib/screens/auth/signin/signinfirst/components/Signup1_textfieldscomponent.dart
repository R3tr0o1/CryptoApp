import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Common/authtextformfiel.dart';

import '../../../../../Common/authbutton.dart';
import '../../../../../Common/sizedbox.dart';
import '../../../../../main.dart';
import '../../../login/authorizationScreen.dart';

class Signup1Textfield extends StatefulWidget {
  const Signup1Textfield({Key? key}) : super(key: key);

  @override
  State<Signup1Textfield> createState() => _Signup1TextfieldState();
}

class _Signup1TextfieldState extends State<Signup1Textfield> {
  String dropdownValue = 'User';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController enterfullname = TextEditingController();
  TextEditingController contact = TextEditingController();
  bool sucess = false;
  String? usernameEmail;

  void _register() async {
    User? user = (await auth.createUserWithEmailAndPassword(
      email: enterfullname.text,
      password: contact.text,
    ))
        .user;
    if (user != null) {
      setState(() {
        sucess = true;
        usernameEmail = user.email;
      });
    } else {
      setState(() {
        sucess = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            'Full Name',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w500, height: 1.25, fontSize: 14),
            ),
          ),
          const SpaceH8(),
          CommonAuthTextField(
              hinttext: "User's Full Name ", controller: enterfullname),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Phone Number',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w500, height: 1.25, fontSize: 14),
            ),
          ),
          const SpaceH8(),
          CommonAuthTextField(
              hinttext: "Phone number that can be contacted ",
              controller: contact),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Register as',
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w500, height: 1.25, fontSize: 14),
            ),
          ),
          const SpaceH8(),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: SizedBox(
                  height: 42,
                  child: DropdownButton(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset('asset/image/dropdownicon.png'),
                    ),
                    itemHeight: 48,
                    items: <String>['User', 'admin']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 27,
          ),
          CommonAuthButton(
            text: 'NEXT',
            onPressed: () {
              setState(() {
                if (_formKey.currentState!.validate()) {
                  _register();
                }
              });
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
        ],
      ),
    );
  }
}
