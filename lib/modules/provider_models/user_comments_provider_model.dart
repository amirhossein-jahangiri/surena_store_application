import 'package:flutter/foundation.dart';

import 'package:surena_store_application/modules/models/comments_model.dart';

class UserCommentsProviderModel with ChangeNotifier {
  final List<CommentsModel> _comments = <CommentsModel>[
    CommentsModel(
      title: 'خرید این محصول را پیشنهاد میکنم',
      body: 'بسته بندی عالیی داشت خیلی خوب بود ممنونم از سورنا',
      time: DateTime.now(),
      userName: 'رضا میرزایی',
    ),
    CommentsModel(
      title: 'عالی بود',
      body: 'انقدر خوب بود که واقعا چیزی ندارم که بگم :)',
      time: DateTime.now(),
      userName: 'مهدیه طباطبایی',
    ),
    CommentsModel(
      title: 'محصول خوبی بود',
      body: 'محصول خوبی بود کیفیت ساختش خیلی خوب بود ولی قیمتش بیشتر شده من در تخفیف گرفتم ارزون تر بود',
      time: DateTime.now(),
      userName: 'حسن عبدلی',
    ),
    CommentsModel(
      title: 'طراحی شیک و عالی',
      body: 'محصول بدی نبود',
      time: DateTime.now(),
      userName: 'سامان حیدری',
    ),
    CommentsModel(
      title: 'بخرید',
      body: 'بسته بندی عالیی داشت خیلی خوب بود ممنونم از سورنا',
      time: DateTime.now(),
      userName: 'شیما رضایی',
    ),
    CommentsModel(
      title: 'بسته بندی باز شده بود',
      body: 'وقتی به دستم رسید بسته بندی باز شده بود اما برام مهم نبود استفاده کردم',
      time: DateTime.now(),
      userName: 'محسن عربگل',
    ),
  ];

  List<CommentsModel> get comments => _comments;

  int get lengthOfCommentsList => _comments.length;

}