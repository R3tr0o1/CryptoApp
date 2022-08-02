import 'package:flutter/material.dart';

/// Define const colors used throughout the app here

/// color for theme
/// Primary Colors
const kPrimarygreen = Color(0xff5EDE99);
const kSecondaryred = Color(0xffFFE0E0);
const kCardcolor = Color(0xffFFFFFF);
const kBackgroundColor = Color(0xffE5E5E5);
const kSelectedItem = Color(0xff00CB6A);
const kPrimaryMiriage = Color(0xFF17212A);
const kPrimaryHoki = Color(0xff64829D);
const kPrimaryWhite = Color(0xffFFFFFF);
const kPrimarydark = Color(0xff11181F);
const kIconColor = Color(0xff01B29A);
const kGrayColor = Color(0xffECEBF0);
const kTextGray = Color(0xff646464);
const kButtonGray = Color(0xffAAAAAA);
const kTextFieldColor = Color(0xffFFFFFF);
const kTextFieldTextColor = Color(0xff5D5C5D);

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
  primary: kPrimarygreen,
  secondary: kSecondaryred,
  surface: kPrimaryWhite,
  background: kBackgroundColor,
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
