import 'package:flutter/material.dart';
import '/constants/route_constants.dart';

import '/views/screens/product_overview_screen/product_overview_screen.dart';

class RouteConfig {
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteConstants.PRODUCT_OVERVIEW_SCREEN_ROUTE_NAME: (context) => ProductOverViewScreen(),
  };
}