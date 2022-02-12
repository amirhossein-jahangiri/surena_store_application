import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';
import 'package:surena_store_application/views/widgets/custom_expansion_tile.dart';

import '/constants/app_constants.dart';
import '/constants/assets_path_constants.dart';
import '/views/screens/product_details_screen/product_details_screen_widgets/custom_card_product_title_id_and_category_name.dart';
import '/views/widget_testing.dart';
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
            CachedNetworkImage(
              imageUrl: AssetsPathConstants.RECOMMENDED_PRODUCTS_IMAGE_ASSET,
              height: 30.h,
              fit: BoxFit.contain,
              progressIndicatorBuilder: (context, url, progress) {
                return Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                );
              },
            ),
            // todo display title
            const CustomCardProductTitleProductIdAndProductCategoryName(),
            SizedBox(height: 1.h),
            // todo display details
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              child: CustomExpansionTile(
                title: Text(
                  AppConstants.DISPLAY_PRODUCT_DESCRIPTION_NAME_EXPANSION_PANEL,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                borderRadius: 8.sp,
                tilePadding: EdgeInsets.all(8.sp),
                collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
                backgroundColor: Theme.of(context).colorScheme.surface,
                defaultLeadingIconSize: 5.h,
                children: [
                  Text(
                    AppConstants.DISPLAY_PRODUCT_DESCRIPTION_IN_BODY_OF_EXPANSION_PANEL,
                    style: Theme.of(context).textTheme.button!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),

            // todo display user comments
            Card(
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.sp),
              ),
              color: Theme.of(context).colorScheme.surface,
              child: SizedBox(
                height: 30.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 70.w,
                      height: 40.h,
                      margin: EdgeInsets.all(8.sp),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: BorderRadius.circular(8.sp),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .primaryVariant
                                .withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 1,
                            offset: Offset(-1.w, -0.5.h),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 1.h),

            // todo display similarly products
            Placeholder(
              fallbackHeight: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
