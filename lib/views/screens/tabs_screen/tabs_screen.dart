import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/modules/provider_models/app_controller_provider_model.dart';
import '/views/screens/categories_screen/categories_screen.dart';
import '/views/screens/product_overview_screen/product_overview_screen.dart';
import '/views/screens/shopping_cart_screen/shopping_cart_screen.dart';
import '/views/screens/user_profile_screen/user_profile_screen.dart';
import '/constants/app_constants.dart';

// todo display tabs for switch between screens
// todo including product overview, categories, shopping cart and user profile

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> pages = [];

  @override
  void initState() {
    pages = [
      ProductOverViewScreen(),
      CategoriesScreen(),
      ShoppingCartScreen(),
      UserProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          currentIndex: context.watch<AppControllerProviderModel>().currentIndex,
          onTap: (int index) {
            context.read<AppControllerProviderModel>().updateTabsIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppConstants.HOME,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: AppConstants.CATEGORIES,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: AppConstants.CART,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppConstants.PROFILE,
            ),
          ],
        ),
        //body: pages[_currentIndex],
        body: Consumer<AppControllerProviderModel>(
          builder: (context, tabs, child) {
            return pages[tabs.currentIndex];
          },
        ),
      ),
    );
  }
}
