import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/constants/assets_path_constants.dart';
import '../product_overview_screen_widgets/product_price_with_discount.dart';

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
        return Container(
          height: 50.h,
          width: 50.w,
          margin: EdgeInsets.symmetric(
            vertical: 3.h,
            horizontal: 3.w,
          ),
          padding: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.sp),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: Column(
            children: [

              const Spacer(),

              // todo display image of product
              CachedNetworkImage(
                imageUrl: AssetsPathConstants
                    .RECOMMENDED_PRODUCTS_IMAGE_ASSET,
                height: 20.h,
                fit: BoxFit.contain,
                progressIndicatorBuilder:
                    (context, url, progress) {
                  return Center(
                      child: CircularProgressIndicator(
                          value: progress.progress));
                },
              ),

              const Spacer(),

              // todo display title of product
              SizedBox(
                width: double.infinity,
                child: Text(
                  'کیف زنانه مدل p',
                  textAlign: TextAlign.right,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary,
                  ),
                ),
              ),

              // todo display divider
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.primary,
              ),

              // todo display price and discount percent
              const ProductPriceWithDiscount(),
            ],
          ),
        );
      },
    );
  }
}




