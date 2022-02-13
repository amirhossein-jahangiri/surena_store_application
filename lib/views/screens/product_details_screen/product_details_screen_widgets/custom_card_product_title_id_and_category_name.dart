import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';

// todo display custom card widget includes: product title, id and category name

class CustomCardProductTitleProductIdAndProductCategoryName extends StatelessWidget {
  final String? productTitle;
  final int? productId;
  final String? productCategoryName;

  const CustomCardProductTitleProductIdAndProductCategoryName({
    this.productTitle,
    this.productId,
    this.productCategoryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      color: Theme.of(context).colorScheme.surface,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productTitle!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              '${AppConstants.DISPLAY_PRODUCT_CODE_TITLE} $productId',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              '${AppConstants.DISPLAY_PRODUCT_CATEGORY_NAME_TITLE} $productCategoryName',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}
