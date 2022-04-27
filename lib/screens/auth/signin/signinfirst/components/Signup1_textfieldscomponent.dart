import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Common/AuthTextformfiel.dart';

import '../../../../../Common/Sizedbox.dart';

class Signup1Textfield extends StatefulWidget {
  const Signup1Textfield({Key? key}) : super(key: key);

  @override
  State<Signup1Textfield> createState() => _Signup1TextfieldState();
}

class _Signup1TextfieldState extends State<Signup1Textfield> {
  String dropdownValue = 'User';
  TextEditingController enterfullname = TextEditingController();
  TextEditingController contact = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Full Name',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                fontWeight: FontWeight.w500, height: 1.25, fontSize: 14),
          ),
        ),
        SpaceH8(),
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
        SpaceH8(),
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
        SpaceH8(),
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
      ],
    );
  }
}
