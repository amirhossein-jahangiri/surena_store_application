import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'amazing_products_item.dart';
import '/constants/assets_path_constants.dart';

// todo this widget for display amazing products in product overview screen

class AmazingProductsList extends StatelessWidget {
  const AmazingProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return AmazingProductsItem( // todo display items and use amazing products item dart file
          height: 50.h,
          width: 50.w,
          image: AssetsPathConstants.RECOMMENDED_PRODUCTS_IMAGE_ASSET,
          title: 'کیف زنانه مدل p',
          price: '35000 تومان',
          discountPercent: '10 %',
        );
      },
    );
  }
}





