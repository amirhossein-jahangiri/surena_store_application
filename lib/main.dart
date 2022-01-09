import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '/config/theme_config.dart';
import '/config/route_config.dart';
import '/constants/route_constants.dart';
import 'modules/provider_models/product_overview_screen_slider_provider_model.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ProductOverViewScreenSliderProviderModel()),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      // todo for sizer package and make responsive application
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
