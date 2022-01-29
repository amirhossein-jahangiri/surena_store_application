import 'package:flutter/material.dart';

// todo display custom chip widget in screens

class CustomChipWidget extends StatelessWidget {
  final String? label;
  final TextStyle? labelStyle;
  final Color? backColor;

  const CustomChipWidget({
    this.label,
    this.labelStyle,
    this.backColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label!, style: labelStyle),
      backgroundColor: backColor!,
    );
  }
}
