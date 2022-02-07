import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';

// todo display custom card widget includes: product title, id and category name

class CustomCardProductTitleProductIdAndProductCategoryName extends StatelessWidget {
  const CustomCardProductTitleProductIdAndProductCategoryName({
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
              'کیف زنانه مدل p',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              AppConstants.DISPLAY_PRODUCT_CODE_TITLE + '1',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              AppConstants.DISPLAY_PRODUCT_CATEGORY_NAME_TITLE + 'لباس زنانه',
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
