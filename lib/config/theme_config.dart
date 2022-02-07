import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// todo this class for theme , colors , fonts and etc in this application

class ThemeConfig {
  static const String fontFamily = 'IranSans';
  static const String secondaryFont = 'Aviny';
  static const Color _lightScaffoldBackColor = Colors.white;
  //static const Color _lightPrimaryColor = Colors.purple;
  static const Color _lightPrimaryColor = Color(0xFF6a1b9a);
  static const Color _lightOnPrimaryColor = Colors.white;
  static const Color _lightPrimaryVariantColor = Colors.purpleAccent;
  static const Color _lightSecondaryColor =  Colors.black;
  static const Color _lightOnSecondaryColor = Colors.grey;
  static const Color _lightErrorColor = Colors.red;
  static const Color _lightSurfaceColor = Color(0xFFFAFAFA);

  static ColorScheme lightColorScheme = const ColorScheme.light(
    primary: _lightPrimaryColor,
    onPrimary: _lightOnPrimaryColor,
    primaryVariant: _lightPrimaryVariantColor,
    secondary: _lightSecondaryColor,
    onSecondary: _lightOnSecondaryColor,
    error: _lightErrorColor,
    surface: _lightSurfaceColor,
  );

  static TextTheme lightTextTheme = TextTheme(
    headline4: lightHeadline4TextStyle,
    bodyText1: lightBodyText1Style,
    bodyText2: lightBodyText2Style,
    button: lightButtonStyle,
    subtitle2: lightSubTitle2Style,
    overline: lightOverLineStyle,
  );

  static TextStyle lightHeadline4TextStyle = TextStyle(
    fontSize: 16.sp, // 17
    letterSpacing: 0.75,
    color: _lightSecondaryColor,
  );
  static TextStyle lightBodyText1Style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14.sp, // 15
    letterSpacing: 0.75,
    color: _lightPrimaryColor,
  );
  static TextStyle lightBodyText2Style = TextStyle(
    fontSize: 14.sp, // 15
    letterSpacing: 0.5,
    color: _lightPrimaryColor,
  );
  static TextStyle lightButtonStyle = TextStyle(
    fontSize: 12.sp, // 13
    color: _lightPrimaryColor,
  );
  static TextStyle lightSubTitle2Style = TextStyle(
    fontSize: 10.sp, // 11
    color: _lightOnSecondaryColor,
  );
  static TextStyle lightOverLineStyle = TextStyle(
    fontSize: 14.sp, // 15
    fontFamily: secondaryFont,
    color: _lightOnSecondaryColor,
  );

  static IconThemeData lightIconTheme = IconThemeData(
    color: _lightPrimaryVariantColor,
    size: 9.h, // 10
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