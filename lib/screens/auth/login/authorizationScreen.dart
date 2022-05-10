import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Common/sizedbox.dart';
import 'package:myapp/screens/Auth/Login/components/login_headercomponent.dart';
import 'package:myapp/screens/Auth/signin/signinfirst/SignUp.dart';

import 'package:myapp/screens/bottomnavigation/bottomnavigation.dart';
import '../../../Common/AuthTextformfiel.dart';
import '../../../Common/authbutton.dart';
import '../../../main.dart';
import 'components/login_bottomcomponent.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? _success;
  String? _userEmail;

  void _signInWithEmailAndPassword() async {
    try {
      final User? user = (await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user;

      if (user != null) {
        setState(() {
          _success = true;
          _userEmail = user.email;
        });
      } else {
        setState(() {
          _success = false;
        });
      }
    } catch (e) {
      showDialog(
          context: context,
          builder: (BuildContext context) => const AlertDialog(
                title: Text(' Wrong email or pass'),
              ));
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 93, 15, 0),
          child: ListView(children: [
            const LoginHeaderComponent(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                        fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CommonAuthTextField(
                  controller: emailController,
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
                  controller: passwordController,
                  hinttext: 'Enter Passsword',
                ),
                Center(
                    child: Text(
                  "forgot Password?",
                  style: TextStyle(
                      height: 1.3,
                      color: Color(0xffEFBE24),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Mulish'),
                )),
                const SizedBox(height: 24),
                CommonAuthButton(
                    text: 'Enter',
                    onPressed: () {
                      if (emailController.text.isEmpty &&
                          passwordController.text.isEmpty) {
                        return ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(
                          width: MediaQuery.of(context).size.width / 1.5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.red,
                          content: Text(
                            'enter valid  email and pass',
                            textAlign: TextAlign.center,
                          ),
                        ));
                      } else if (passwordController.text.isEmpty) {
                        return ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('enter  valid password'),
                        ));
                      } else if (emailController.text.isEmpty) {
                        return ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('enter  valid email'),
                        ));
                      } else {
                        if (_formKey.currentState!.validate()) {
                          _signInWithEmailAndPassword();
                        }
                      }
                    }),
                const SizedBox(height: 24),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account yet?  ",
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
                              Get.to(SignUpScreen());
                            },
                          text: 'Register here',
                          style: TextStyle(
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
            SpaceH34(),
            const LoginBottomComponent(),
          ]),
        ),
      ),
    );
  }
}
