import 'package:flutter/material.dart';

// todo display custom chip widget in screens

class CustomChipWidget extends StatelessWidget {
  final String? label;
  final Color? color;

  const CustomChipWidget({
    this.label,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label!,
        style: Theme.of(context)
            .textTheme
            .button!
            .copyWith(
          color: Theme.of(context)
              .colorScheme
              .onPrimary,
        ),
      ),
      backgroundColor: color!,
    );
  }
}
