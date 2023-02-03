import 'package:flutter/material.dart';

class CommonAuthButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const CommonAuthButton({
    required this.text,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345,
      height: 38,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
        ),
        child: Text(
          text,
          style: const TextStyle(
              height: 1.3,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontFamily: 'Mulish'),
        ),
      ),
    );
  }
}
