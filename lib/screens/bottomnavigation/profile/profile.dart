import 'package:flutter/material.dart';
import 'package:myapp/screens/BottomNavigation/Profile/Component/Profile_Arrangementcomponent.dart';
import 'package:myapp/screens/BottomNavigation/Profile/Component/Profile_Transactioncomponent.dart';
import 'package:myapp/screens/BottomNavigation/Profile/Component/Profile_headercomponent.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ProfileHEader(),
              ProfileTransaction(),
              ProfileArrangement(),
            ],
          )
        ],
      ),
    );
  }
}
