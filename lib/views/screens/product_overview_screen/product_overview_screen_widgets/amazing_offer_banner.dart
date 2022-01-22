import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/constants/assets_path_constants.dart';
import '/constants/app_constants.dart';


// todo this widget for display amazing offer banner in product overview screens


class AmazingOfferBanner extends StatelessWidget {
  const AmazingOfferBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      width: 40.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Spacer(),

          // todo display image file
          SvgPicture.asset(
            AssetsPathConstants.AMAZING_OFFER_BANNER_SVG,
            height: 15.h,
            color: Theme.of(context).colorScheme.onPrimary,
          ),

          SizedBox(height: 1.h),

          // todo display amazing offer text
          Text(
            AppConstants.AMAZING_OFFER_TEXT,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),

          const Spacer(),

          // todo display see all amazing products text and navigate to ...
          Text(
            AppConstants.AMAZING_OFFER_SEE_ALL_PRODUCTS_TEXT,
            style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
