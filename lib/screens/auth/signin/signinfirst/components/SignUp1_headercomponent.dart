import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup1header extends StatefulWidget {
  const Signup1header({Key? key}) : super(key: key);

  @override
  State<Signup1header> createState() => _Signup1headerState();
}

class _Signup1headerState extends State<Signup1header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: SvgPicture.asset('asset/svg/Vector.svg',
                color: const Color(0xff5EDE99))),
        const Center(
            child: Text(
          'Sign up',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 32,
              height: 1.25),
        )),
        const SizedBox(
          height: 4,
        ),
        const Center(
            child: Text(
          'Trusted by millions of users worldwide ',
          style: TextStyle(
              color: Color(0xff5EDE99), height: 1.25, fontFamily: 'Mulish'),
        )),
        const SizedBox(
          height: 56,
        ),
      ],
    );
  }
}
