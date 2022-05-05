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
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? _success;
  String? _userEmail;

  void _signInWithEmailAndPassword() async {
    try {
      final User? user = (await auth.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      ))
          .user;

      if (user != null) {
        setState(() {
          _success = true;
          _userEmail = user.email;
          Get.to(NavigationScreen());
        });
      } else {
        setState(() {
          _success = false;
        });
      }
    } catch (e) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text(' Wrong email or pass'),
              ));
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
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
                  controller: email,
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
                  controller: password,
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
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _signInWithEmailAndPassword();
                    }
                  },
                ),
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
                              Get.to(const SignUpScreen());
                            },
                          text: 'Register here',
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
            SpaceH34(),
            const LoginBottomComponent(),
          ]),
        ),
      ),
    );
  }
}
