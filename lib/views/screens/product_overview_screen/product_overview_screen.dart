import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/app_constants.dart';
import 'product_overview_screen_widgets/title_search_box.dart';

// todo this screen for show and display product overview


class ProductOverViewScreen extends StatelessWidget {
  const ProductOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const TitleSearchBox(),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [

            Placeholder(
              fallbackHeight: 30.h,
            ),

            Placeholder(
              fallbackHeight: 10.h,
            ),

            Placeholder(
              fallbackHeight: 50.h,
            ),

            Placeholder(
              fallbackHeight: 100.h,
            ),

          ],
        ),
      ),
    );
  }
}

