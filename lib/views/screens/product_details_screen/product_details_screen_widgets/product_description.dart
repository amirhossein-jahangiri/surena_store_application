import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/views/widgets/custom_expansion_tile.dart';
import '/constants/app_constants.dart';

// todo display product description expanded and collapsed card section in product details screen widget

class ProductDescription extends StatelessWidget {
  final String? productDescription;

  const ProductDescription({
    this.productDescription,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
      ),
      child: CustomExpansionTile(
        title: Text(
          AppConstants.DISPLAY_PRODUCT_DESCRIPTION_NAME_EXPANSION_PANEL,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500,
          ),
        ),
        borderRadius: 8.sp,
        tilePadding: EdgeInsets.all(8.sp),
        collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
        backgroundColor: Theme.of(context).colorScheme.surface,
        defaultLeadingIconSize: 4.h,
        children: [
          Text(
            productDescription!,
            style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
