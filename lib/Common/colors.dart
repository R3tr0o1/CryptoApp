import 'package:flutter/material.dart';

/// Define const colors used throughout the app here

/// color for theme
/// Primary Colors
const kPrimaryTealBlue = Color(0xFF019782);
const kPrimaryMiriage = Color(0xFF17212A);
const kPrimaryHoki = Color(0xff64829D);
const kPrimaryWhite = Color(0xffFFFFFF);
const kPrimarydark = Color(0xff11181F);
const kIconColor = Color(0xff01B29A);
const kGrayColor = Color(0xffECEBF0);
const kTextGray = Color(0xff646464);
const kButtonGray = Color(0xffAAAAAA);
const kTextFieldColor = Color(0xffF3F2F7);
const kTextFieldTextColor = Color(0xff898989);

///
///Semantic/Secondary color
const kSemanticPositive = Color(0xff53D769);
const kSemanticNegative = Color(0xffFC3D39);
const kSemanticDefault = Color(0xffE6E6E6);
const kSemanticWarning = Color(0xff5BA4FC);
const kSemanticRecommended = Color(0xff5BA4FC);

///
/// Color theme
ColorScheme kColorScheme = ColorScheme(
  primary: kPrimaryTealBlue,
  secondary: kSemanticPositive,
  surface: kPrimaryWhite,
  background: Colors.white,
  error: kSemanticNegative,
  onPrimary: kPrimaryHoki,
  onSecondary: kSemanticRecommended,
  onSurface: kSemanticWarning,
  onBackground: kPrimaryWhite,
  onError: kSemanticNegative,
  brightness: Brightness.light,
);

// extension MyColorScheme on ColorScheme {
//   Color get facebookBlue => fbBlueColor;
// }
