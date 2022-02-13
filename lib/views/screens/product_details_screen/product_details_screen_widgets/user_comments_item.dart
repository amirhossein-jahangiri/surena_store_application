import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


// todo display items for user comments section
// todo parent widget is User Comments For Products in product details screen


class UserCommentsItem extends StatelessWidget {
  const UserCommentsItem({
    Key? key,
    required this.commentTitle,
    required this.commentDescription,
    required this.commentTime,
    required this.commentUserName,
  }) : super(key: key);

  final String? commentTitle;
  final String? commentDescription;
  final DateTime? commentTime;
  final String? commentUserName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 40.h,
      margin: EdgeInsets.all(8.sp),
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context).colorScheme.primaryVariant.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(-1.w, -0.5.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // todo title
          Text(
            commentTitle!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const Spacer(),

          // todo description
          Text(
            commentDescription!,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.subtitle2!.apply(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const Spacer(),

          // todo sender time and user name
          Text(
            '$commentTime - $commentUserName',
            style: Theme.of(context).textTheme.subtitle2,
          ),

        ],
      ),
    );
  }
}
