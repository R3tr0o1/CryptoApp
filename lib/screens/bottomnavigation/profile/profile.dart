// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:myapp/screens/BottomNavigation/Profile/Component/Profile_Arrangementcomponent.dart';
import 'package:myapp/screens/BottomNavigation/Profile/Component/Profile_Transactioncomponent.dart';
import 'package:myapp/screens/BottomNavigation/Profile/Component/Profile_headercomponent.dart';

class ProfileScreen extends StatefulWidget {
  final String? fullName1;
  ProfileScreen({
    Key? key,
    this.fullName1,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    print(widget.fullName1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ProfileHEader(fullName: widget.fullName1.toString()),
              ProfileTransaction(),
              ProfileArrangement(),
            ],
          )
        ],
      ),
    );
  }
}
