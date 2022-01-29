import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// todo this class for theme , colors , fonts and etc in this application

class ThemeConfig {
  static const String fontFamily = 'IranSans';
  static const String secondaryFont = 'Aviny';
  static const Color _lightScaffoldBackColor = Colors.white;
  static const Color _lightPrimaryColor = Colors.purple;
  static const Color _lightOnPrimaryColor = Colors.white;
  static const Color _lightPrimaryVariantColor = Colors.purpleAccent;
  static const Color _lightSecondaryColor =  Colors.black;
  static const Color _lightOnSecondaryColor = Colors.grey;
  static const Color _lightErrorColor = Colors.red;

  static ColorScheme lightColorScheme = const ColorScheme.light(
    primary: _lightPrimaryColor,
    onPrimary: _lightOnPrimaryColor,
    primaryVariant: _lightPrimaryVariantColor,
    secondary: _lightSecondaryColor,
    onSecondary: _lightOnSecondaryColor,
    error: _lightErrorColor,
  );

  static TextTheme lightTextTheme = TextTheme(
    bodyText1: lightBodyText1Style,
    bodyText2: lightBodyText2Style,
    button: lightButtonStyle,
    subtitle2: lightSubTitle2Style,
    overline: lightOverLineStyle,
  );

  static TextStyle lightBodyText1Style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.sp,
    letterSpacing: 0.75,
    color: _lightPrimaryColor,
  );
  static TextStyle lightBodyText2Style = TextStyle(
    fontSize: 15.sp,
    letterSpacing: 0.5,
    color: _lightPrimaryColor,
  );
  static TextStyle lightButtonStyle = TextStyle(
    fontSize: 13.sp,
    color: _lightPrimaryColor,
  );
  static TextStyle lightSubTitle2Style = TextStyle(
    fontSize: 11.sp,
    color: _lightOnSecondaryColor,
  );
  static TextStyle lightOverLineStyle = TextStyle(
    fontSize: 15.sp,
    fontFamily: secondaryFont,
    color: _lightOnSecondaryColor,
  );

  static IconThemeData lightIconTheme = IconThemeData(
    color: _lightPrimaryVariantColor,
    size: 10.h,
  );

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: _lightScaffoldBackColor,
    elevation: 5,
    iconTheme: lightIconTheme.copyWith(color: _lightSecondaryColor),
    toolbarHeight: 8.h,
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightScaffoldBackColor,
    fontFamily: fontFamily,
    splashColor: _lightPrimaryColor,
    colorScheme: lightColorScheme,
    textTheme: lightTextTheme,
    iconTheme: lightIconTheme,
    appBarTheme: lightAppBarTheme,
  );

}