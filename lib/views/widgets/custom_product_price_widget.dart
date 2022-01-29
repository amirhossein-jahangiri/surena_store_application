import 'package:flutter/material.dart';

// todo display product price in screens such as products detail and product overview

class CustomProductPriceWidget extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  const CustomProductPriceWidget({
    this.title,
    this.titleStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title!, style:titleStyle);
  }
}
