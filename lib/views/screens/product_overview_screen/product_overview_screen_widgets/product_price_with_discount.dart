import 'package:flutter/material.dart';

import '/views/widgets/custom_chip_widget.dart';
import '/views/widgets/custom_product_price_widget.dart';

// todo display products price and products discount in amazing products section

class ProductPriceWithDiscount extends StatelessWidget {
  const ProductPriceWithDiscount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomProductPriceWidget(title: '23000 تومان',),
        ),
        CustomChipWidget(label: '10%', color: Theme.of(context).colorScheme.error),
      ],
    );
  }
}