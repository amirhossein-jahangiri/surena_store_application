import 'package:flutter/material.dart';

import '/views/widgets/custom_chip_widget.dart';
import '/views/widgets/custom_product_price_widget.dart';

// todo display products price and products discount in amazing products section

class ProductPriceWithDiscount extends StatelessWidget {
  final String? price;
  final TextStyle? priceStyle;
  final String? discountPercent;
  final TextStyle? discountPercentStyle;

  const ProductPriceWithDiscount({
    this.price,
    this.priceStyle,
    this.discountPercent,
    this.discountPercentStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomProductPriceWidget(title: price, titleStyle: priceStyle),
        ),
        CustomChipWidget(
          label: discountPercent,
          labelStyle: discountPercentStyle,
          backColor: Theme.of(context).colorScheme.error,
        ),
      ],
    );
  }
}
