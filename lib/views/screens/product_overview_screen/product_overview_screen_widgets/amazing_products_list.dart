import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'product_item.dart';
import '/constants/assets_path_constants.dart';

// todo display list of amazing products in product overview screen

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
        // todo display product item in list of amazing products
        return ProductItem(
          height: 50.h,
          width: 45.w,
          verticalMargin: 3.h,
          image: AssetsPathConstants.RECOMMENDED_PRODUCTS_IMAGE_ASSET,
          imageSize: 20.h,
          title: 'کیف زنانه مدل p',
          titleStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
          price: '35000 تومان',
          priceStyle: Theme.of(context).textTheme.button!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),
          discountPercent: '10 %',
          discountPercentStyle: Theme.of(context).textTheme.button!.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            ),
        );
      },
    );
  }
}





