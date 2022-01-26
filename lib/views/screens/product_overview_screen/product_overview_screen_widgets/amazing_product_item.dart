import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/views/screens/product_overview_screen/product_overview_screen_widgets/product_price_with_discount.dart';

// todo display amazing product item in list of amazing products on product overview screen

class AmazingProductItem extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final String? title;
  final String? price;
  final String? discountPercent;

  const AmazingProductItem({
    this.height,
    this.width,
    this.image,
    this.title,
    this.price,
    this.discountPercent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
            imageUrl: image!,
            height: 20.h,
            fit: BoxFit.contain,
            progressIndicatorBuilder: (context, url, progress) {
              return Center(
                child: CircularProgressIndicator(value: progress.progress),
              );
            },
          ),

          const Spacer(),

          // todo display title of product
          SizedBox(
            width: double.infinity,
            child: Text(
              title!,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),

          // todo display divider
          Divider(
            thickness: 2,
            color: Theme.of(context).colorScheme.primary,
          ),

          // todo display price and discount percent
          ProductPriceWithDiscount(
            price: price!,
            discountPercent: discountPercent!,
          ),
        ],
      ),
    );
  }
}
