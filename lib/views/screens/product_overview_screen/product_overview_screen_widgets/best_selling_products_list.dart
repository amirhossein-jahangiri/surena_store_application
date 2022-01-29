import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:surena_store_application/constants/app_constants.dart';

import '/constants/assets_path_constants.dart';
import 'product_item.dart';

// todo display list of best selling products on products overview screen

class BestSellingProductsList extends StatelessWidget {
  const BestSellingProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 3.w,
      mainAxisSpacing: 2.h,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 15,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // todo display product item in list of best selling products
        return index == 0
            ? Container(
                width: double.infinity,
                height: 10.h,
                margin: EdgeInsets.only(right: 5.w),
                alignment: Alignment.centerRight,
                child: Text(
                  AppConstants.BEST_SELLING_PRODUCTS_TEXT, 
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            : ProductItem(
                height: 31.h,
                width: 40.w,
                verticalMargin: 1.h,
                image: AssetsPathConstants.RECOMMENDED_PRODUCTS_IMAGE_ASSET,
                imageSize: 15.h,
                title: 'کیف زنانه مدل p',
                titleStyle: Theme.of(context).textTheme.button!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                price: '35000 تومان',
                priceStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                discountPercent: '10 %',
                discountPercentStyle:
                    Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
              );
      },
    );
  }
}
