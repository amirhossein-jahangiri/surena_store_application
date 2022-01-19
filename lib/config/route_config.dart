import 'package:flutter/material.dart';

import '/constants/route_constants.dart';
import '/views/screens/product_overview_screen/product_overview_screen.dart';
import '/views/screens/tabs_screen/tabs_screen.dart';
import '/views/screens/categories_screen/categories_screen.dart';
import '/views/screens/user_profile_screen/user_profile_screen.dart';

class RouteConfig {
  static Map<String, Widget Function(BuildContext)> routes = {
    RouteConstants.TABS_SCREEN_ROUTE_NAME: (context) => TabsScreen(),
    RouteConstants.PRODUCT_OVERVIEW_SCREEN_ROUTE_NAME: (context) => ProductOverViewScreen(),
    RouteConstants.CATEGORIES_SCREEN_ROUTE_NAME: (context) => CategoriesScreen(),
    RouteConstants.SHOPPING_CART_SCREEN_ROUTE_NAME: (context) => CategoriesScreen(),
    RouteConstants.USER_PROFILE_SCREEN_ROUTE_NAME: (context) => UserProfileScreen(),
  };
}