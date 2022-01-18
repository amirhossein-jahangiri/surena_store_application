import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'amazing_products_list.dart';
import 'amazing_offer_banner.dart';


// todo this widget for display amazing products list and offer banner in product overview screen

class AmazingProductsWithOfferBanner extends StatelessWidget {
  const AmazingProductsWithOfferBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const[
          AmazingOfferBanner(),
          AmazingProductsList(),
        ],
      ),
    );
  }
}
