import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '/views/screens/product_overview_screen/product_overview_screen_widgets/best_selling_product_item.dart';
import '/constants/assets_path_constants.dart';

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
        return BestSellingProductItem(
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
