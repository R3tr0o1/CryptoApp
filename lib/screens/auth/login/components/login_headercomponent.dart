import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginHeaderComponent extends StatefulWidget {
  const LoginHeaderComponent({Key? key}) : super(key: key);

  @override
  State<LoginHeaderComponent> createState() => _LoginHeaderComponentState();
}

class _LoginHeaderComponentState extends State<LoginHeaderComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: SvgPicture.asset('asset/svg/Vector.svg',
                color: const Color(0xff5EDE99))),
        const Center(
            child: Text(
          'Authorization',
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
