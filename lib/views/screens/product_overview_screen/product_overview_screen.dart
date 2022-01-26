import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'product_overview_screen_widgets/title_search_box.dart';
import 'product_overview_screen_widgets/image_slider.dart';
import 'product_overview_screen_widgets/categories_list.dart';
import 'product_overview_screen_widgets/amazing_products_with_offer_banner.dart';
import 'product_overview_screen_widgets/best_selling_products_list.dart';

// todo this screen for show and display product overview

class ProductOverViewScreen extends StatefulWidget {
  const ProductOverViewScreen({Key? key}) : super(key: key);

  @override
  State<ProductOverViewScreen> createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const TitleSearchBox(),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            // todo display image slider
            const ImageSlider(),
            SizedBox(height: 1.h),

            // todo display list of categories (purple circle container)
            const CategoriesList(),

            // todo display recommended products
            const AmazingProductsWithOfferBanner(),

            // todo display best selling products
            const BestSellingProductsList(),
          ],
        ),
      ),
    );
  }
}

