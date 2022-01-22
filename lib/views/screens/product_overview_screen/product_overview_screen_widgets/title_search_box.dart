import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';

// todo this class for search box in app bar product overview screen

class TitleSearchBox extends StatelessWidget {
  const TitleSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: TextField(
        style: Theme.of(context).textTheme.button!.copyWith(
          letterSpacing: 1,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.search, color: Theme.of(context).colorScheme.primary, size: 18.sp),
          hintText: AppConstants.PRODUCT_OVERVIEW_SCREEN_APP_BAR_TITLE,
          hintStyle: Theme.of(context).textTheme.button!.copyWith(
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
