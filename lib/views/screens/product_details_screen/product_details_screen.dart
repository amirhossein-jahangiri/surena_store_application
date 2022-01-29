import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:surena_store_application/constants/app_constants.dart';

import '/views/widgets/shopping_cart_badget.dart';
import './product_details_screen_widgets/product_price_with_buy_btn_in_bottom_nav_bar.dart';


// todo display product details screen


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.clear),
            iconSize: 3.h,
            tooltip: AppConstants.BACK_ICON_BTN_TOOLTIP,
          ),
          actions: [
            ShoppingCartBadget(
              title: '2',
              press: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
              iconSize: 3.h,
              tooltip: AppConstants.ADD_PRODUCT_TO_FAVORITE_LIST_ICON_BTN_TOOLTIP,
            ),
            IconButton(
              onPressed: () {
                // todo solve tooltip problem in 
              },
              icon: const Icon(Icons.more_vert),
              iconSize: 3.h,
              tooltip: AppConstants.OPEN_MORE_LIST_ICON_BTN_TOOLTIP,
            ),
          ],
        ),
        // todo display product price and buy button widget
        bottomNavigationBar: const ProductPriceWithBuyBtnInBottomNavBar(),

        body: ListView(
          children: [
            // todo product image
            Placeholder(
              fallbackHeight: 30.h,
            ),

            // todo product title
            Placeholder(
              fallbackHeight: 10.h,
            ),

            // todo product details / caractristics
            Placeholder(
              fallbackHeight: 10.h,
            ),

            // todo user comments
            Placeholder(
              fallbackHeight: 30.h,
            ),

            // todo list of similar product
            Placeholder(
              fallbackHeight: 50.h,
            ),
          ],
        ),


      ),
    );
  }
}

