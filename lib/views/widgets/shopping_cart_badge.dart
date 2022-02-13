import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';


// todo display shopping cart badge and hold shopping cart list count and show for user


class ShoppingCartBadge extends StatelessWidget {
  final String? title;
  final Function()? press;
  const ShoppingCartBadge({this.title, this.press, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          IconButton(
            onPressed: press,
            icon: const Icon(Icons.shopping_cart),
            iconSize: 3.h,
            tooltip: AppConstants.ADD_TO_SHOPPING_CART_BTN_TEXT,
          ),
          Positioned(
            right: 2,
            child: Container(
              padding: EdgeInsets.all(3.sp),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              //alignment: Alignment.center,
              child: FittedBox(
                alignment: Alignment.center,
                child: Text(
                  title!,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
