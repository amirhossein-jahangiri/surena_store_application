import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';
import '/constants/assets_path_constants.dart';
import '/views/widgets/shopping_cart_badge.dart';
import 'product_details_screen_widgets/product_price_with_buy_btn_in_bottom_nav_bar.dart';
import 'product_details_screen_widgets/product_description.dart';
import 'product_details_screen_widgets/product_images.dart';
import 'product_details_screen_widgets/user_comments_for_products.dart';
import 'product_details_screen_widgets/custom_card_product_title_id_and_category_name.dart';

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
            ShoppingCartBadge(
              title: '2',
              press: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
              iconSize: 3.h,
              tooltip:
                  AppConstants.ADD_PRODUCT_TO_FAVORITE_LIST_ICON_BTN_TOOLTIP,
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

        // todo body of this screen
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 1.h),

            // todo display image
            const ProductImages(
              imageUrl: AssetsPathConstants.RECOMMENDED_PRODUCTS_IMAGE_ASSET,
            ),

            // todo display title
            const CustomCardProductTitleProductIdAndProductCategoryName(
              productTitle: 'کیف زنانه مدل p',
              productId: 1,
              productCategoryName: 'کیف زنانه',
            ),
            SizedBox(height: 1.h),



            // todo display description
            const ProductDescription(
              productDescription: AppConstants.DISPLAY_PRODUCT_DESCRIPTION_IN_BODY_OF_EXPANSION_PANEL,
            ),
            SizedBox(height: 1.h),



            // todo display user comments
            const UserCommentsForProducts(),



            SizedBox(height: 1.h),
            // todo display similarly products
            Placeholder(fallbackHeight: 60.h),
          ],
        ),
      ),
    );
  }
}


