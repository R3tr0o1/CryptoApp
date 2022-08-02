import 'package:flutter/material.dart';
import 'package:myapp/Common/colors.dart';

ThemeData buildLightTheme() {
  final base = ThemeData.light().copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(),
  );

  return base.copyWith(
      backgroundColor: kBackgroundColor,
      cardColor: kCardcolor,
      primaryColor: kPrimarygreen,
      secondaryHeaderColor: kSecondaryred,
      splashColor: kPrimarygreen);
}
