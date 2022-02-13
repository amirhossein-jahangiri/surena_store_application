import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

import '/constants/app_constants.dart';
import '/modules/provider_models/user_comments_provider_model.dart';

// todo display title and number of comments
// todo parent widget user comments for products in product details screen

class TitleOfUserCommentsSectionWithNumberOfComments extends StatelessWidget {
  const TitleOfUserCommentsSectionWithNumberOfComments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppConstants.DISPLAY_TITLE_OF_USER_COMMENTS_SECTION,
            style: Theme.of(context).textTheme.button!.apply(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Consumer<UserCommentsProviderModel>(
            builder: (context, comment, child) {
              return Text(
                '${comment.lengthOfCommentsList} ${AppConstants.DISPLAY_COMMENTS_TITLE_FOR_COMMENTS_LENGTH_SECTION}',
                style: Theme.of(context).textTheme.button!.apply(
                  color: Theme.of(context).colorScheme.primary,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
