import 'package:flutter/material.dart';

// todo display product price in screens such as products detail and product overview

class CustomProductPriceWidget extends StatelessWidget {
  final String? title;
  const CustomProductPriceWidget({
    this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '23000 تومان',
      style: Theme.of(context)
          .textTheme
          .button!
          .copyWith(
        color: Theme.of(context)
            .colorScheme
            .secondary,
      ),
    );
  }
}
