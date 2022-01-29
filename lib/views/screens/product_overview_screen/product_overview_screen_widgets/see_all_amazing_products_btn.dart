import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// todo display a see all amazing products button in amazing banner section in product over view screen

class SeeAllAmazingProductsBtn extends StatelessWidget {
  final String? title;
  final Function()? press;

  const SeeAllAmazingProductsBtn({
    this.title,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      child: Text(
        title!,
        style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
      style: ButtonStyle(
        animationDuration: const Duration(seconds: 2),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(color: Theme.of(context).colorScheme.onPrimary),
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.sp))),
      ),
    );
  }
}
