import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/config/theme_config.dart';
import '/config/route_config.dart';
import '/constants/route_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer( // todo for sizer package and make responsive application
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeConfig.lightTheme,
          initialRoute: RouteConstants.PRODUCT_OVERVIEW_SCREEN_ROUTE_NAME,
          routes: RouteConfig.routes,
        );
      },
    );
  }
}
