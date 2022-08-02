import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/user.dart';
import 'package:myapp/screens/bottomnavigation/bottomnavigation.dart';
import '../../../../../Common/AuthButton.dart';
import '../../../../../Common/authtextformfiel.dart';
import '../../../../../main.dart';

class Signup2Textfield extends StatefulWidget {
  final TextEditingController fullName;
  final TextEditingController phoneNumber;

  Signup2Textfield({
    Key? key,
    required this.fullName,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  State<Signup2Textfield> createState() => _Signup2TextfieldState();
}

class _Signup2TextfieldState extends State<Signup2Textfield> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  bool sucess = false;
  String? usernameEmail;

  Future<void> createUser(
      {required String fullName, required String phoneNumber}) async {
    final docUser = FirebaseFirestore.instance.collection('User').doc();

    final user = Userinfo(
        id: docUser.id,
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: emailcontroller.text);

    final json = user.toJson();

    await docUser.set(json);
  }

  void _register() async {
    createUser(
      fullName: widget.fullName.text,
      phoneNumber: widget.phoneNumber.text,
    );

    User? user = (await auth.createUserWithEmailAndPassword(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    ))
        .user;
    if (user != null) {
      setState(() {
        usernameEmail = user.email;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
          CommonAuthButton(
            text: 'READY',
            onPressed: () {
              final email = emailcontroller.text;
              setState(() {
                if (_formKey.currentState!.validate()) {
                  if (usernameEmail != emailcontroller.text) {
                    _register();
                    Get.to(NavigationScreen(
                      fullNameforprofile: widget.fullName.text,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Email already exist'),
                    ));
                  }
                }
              });
            },
          ),
          const SizedBox(height: 24),
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
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    text: 'Sign in',
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
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }
}
