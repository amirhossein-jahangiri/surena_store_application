import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '/config/theme_config.dart';
import '/config/route_config.dart';
import '/constants/route_constants.dart';
import '/constants/app_constants.dart';
import 'modules/provider_models/product_overview_screen_slider_provider_model.dart';
import 'modules/provider_models/app_controller_provider_model.dart';
import 'modules/provider_models/user_comments_provider_model.dart';


void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AppControllerProviderModel()),
          ChangeNotifierProvider(create: (context) => ProductOverViewScreenSliderProviderModel()),
          ChangeNotifierProvider(create: (context) => UserCommentsProviderModel()),
        ],
        child: const SurenaStoreApplication(),
      ),
    );

class SurenaStoreApplication extends StatelessWidget {
  const SurenaStoreApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      // todo for sizer package and make responsive application
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: AppConstants.APP_TITLE,
          debugShowCheckedModeBanner: false,
          theme: ThemeConfig.lightTheme,
          initialRoute: RouteConstants.TABS_SCREEN_ROUTE_NAME,
          routes: RouteConfig.routes,
        );
      },
    );
  }
}
