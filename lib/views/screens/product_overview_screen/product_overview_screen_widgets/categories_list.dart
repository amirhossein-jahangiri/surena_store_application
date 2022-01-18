import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// todo this widget for list of categories in product overview screens (purple circle container)

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 11.h,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 6.h,
                width: 20.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Icon(Icons.security, size: 4.h, color: Theme.of(context).colorScheme.onPrimary,),
              ),
              Text(
                'item $index',
                style: Theme.of(context).textTheme.button,
              ),
            ],
          );
        },
      ),
    );
  }
}
