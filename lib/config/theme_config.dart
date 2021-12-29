import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// todo this class for theme , colors , fonts and etc in this application

class ThemeConfig {
  static const String fontFamily = 'IranSans';
  static const Color _lightScaffoldBackColor = Colors.white;
  static const Color _lightPrimaryColor = Colors.purple;
  static const Color _lightOnPrimaryColor = Colors.white;
  static const Color _lightPrimaryVariantColor = Colors.purpleAccent;
  static const Color _lightSecondaryColor =  Color(0xFFAB47BC);

  static ColorScheme lightColorScheme = const ColorScheme.light(
    primary: _lightPrimaryColor,
    onPrimary: _lightOnPrimaryColor,
    primaryVariant: _lightPrimaryVariantColor,
    secondary: _lightSecondaryColor,
  );

  static TextTheme lightTextTheme = TextTheme(
    bodyText1: lightBodyText1Style,
    bodyText2: lightBodyText2Style,
    button: lightButtonStyle,
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
    fontSize: 14.sp,
    letterSpacing: 0.75,
    color: _lightPrimaryColor,
  );

  static IconThemeData lightIconTheme = IconThemeData(
    color: _lightPrimaryVariantColor,
    size: 10.sp,
  );

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    iconTheme: lightIconTheme.copyWith(color: _lightOnPrimaryColor),
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