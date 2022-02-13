import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import './title_of_user_comments_section_with_number_of_comments.dart';
import './user_comments_item.dart';
import '/modules/provider_models/user_comments_provider_model.dart';

// todo display user comments section in product details screen

class UserCommentsForProducts extends StatelessWidget {
  const UserCommentsForProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      color: Theme.of(context).colorScheme.surface,
      child: SizedBox(
        height: 32.h,
        child: Column(
          children: [
            // todo display title of user comments and number of comments
            const TitleOfUserCommentsSectionWithNumberOfComments(),

            // todo display comments
            SizedBox(
              height: 25.h,
              child: Consumer<UserCommentsProviderModel>(
                builder: (context, comment, child) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: comment.lengthOfCommentsList,
                    itemBuilder: (context, index) {
                      return UserCommentsItem( // todo display comments item
                        commentTitle: comment.comments[index].title,
                        commentDescription: comment.comments[index].body,
                        commentTime: comment.comments[index].time,
                        commentUserName: comment.comments[index].userName,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}




