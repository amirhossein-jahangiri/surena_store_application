import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/constants/route_constants.dart';
import '/views/screens/product_overview_screen/product_overview_screen_widgets/product_price_with_discount.dart';

// todo display amazing product item in list of amazing products on product overview screen

class ProductItem extends StatelessWidget {
  final double? height;
  final double? width;
  final double? verticalMargin;
  final String? image;
  final double? imageSize;
  final String? title;
  final TextStyle? titleStyle;
  final String? price;
  final TextStyle? priceStyle;
  final String? discountPercent;
  final TextStyle? discountPercentStyle;

  const ProductItem({
    this.height,
    this.width,
    this.verticalMargin,
    this.image,
    this.imageSize,
    this.title,
    this.titleStyle,
    this.price,
    this.priceStyle,
    this.discountPercent,
    this.discountPercentStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(RouteConstants.PRODUCT_DETAILS_SCREEN_ROUTE_NAME);
      },
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin!,
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
              height: imageSize!,
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
                style: titleStyle!,
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
              priceStyle: priceStyle,
              discountPercent: discountPercent!,
              discountPercentStyle: discountPercentStyle,
            ),
          ],
        ),
      ),
    );
  }
}


