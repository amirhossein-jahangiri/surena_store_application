import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '/views/screens/product_overview_screen/product_overview_screen_widgets/best_selling_products_item.dart';
import '/constants/assets_path_constants.dart';

// todo this widget for display best selling products in custom gridview and use staggered grid view package

class BestSellingProductsGridList extends StatelessWidget {
  const BestSellingProductsGridList({
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
      //padding: EdgeInsets.all(5.sp),
      itemBuilder: (context, index) {
        return index == 0
            ? Container(
          padding: EdgeInsets.only(top: 10),
          height: 10.h,
              alignment: Alignment.center,
              //color: Colors.purpleAccent,
              child: Text(
          'محصولات پرفروش',
          style: Theme.of(context).textTheme.button!.copyWith(
            color: Theme.of(context).colorScheme.secondary
          ),
        ),
            )
            : BestSellingProductsItem(
                // todo display item in best selling products list and use best selling products item dart file
                height: 35.h,
                width: 40.w,
                image: AssetsPathConstants.RECOMMENDED_PRODUCTS_IMAGE_ASSET,
                title: 'کیف زنانه مدل p',
                price: '35000 تومان',
                discountPercent: '10 %',
              );
      },
    );
  }
}
