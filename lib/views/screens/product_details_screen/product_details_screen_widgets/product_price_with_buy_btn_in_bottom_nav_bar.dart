import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';

// todo display in bottom nav bar (product price and buy button)

class ProductPriceWithBuyBtnInBottomNavBar extends StatelessWidget {
  const ProductPriceWithBuyBtnInBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      height: 8.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 10,
            color: Theme.of(context).colorScheme.onSecondary,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // todo buy button
          SizedBox(
            height: 5.h,
            width: 40.w,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppConstants.ADD_TO_SHOPPING_CART_BTN_TEXT),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),

          // todo product price
          Text(
            '34000 تومان ',
            style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
