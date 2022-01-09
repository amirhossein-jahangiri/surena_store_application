import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '/constants/app_constants.dart';
import '/constants/assets_path_constants.dart';
import 'product_overview_screen_widgets/title_search_box.dart';
import 'product_overview_screen_widgets/image_slider.dart';
import 'product_overview_screen_widgets/categories_list.dart';
import '/modules/provider_models/product_overview_screen_slider_provider_model.dart';

// todo this screen for show and display product overview

class ProductOverViewScreen extends StatefulWidget {
  ProductOverViewScreen({Key? key}) : super(key: key);

  @override
  State<ProductOverViewScreen> createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            // todo this widget for display image slider
            const ImageSlider(),
            SizedBox(height: 1.h),

            // todo this widget for display list of categories (purple circle container)
            const CategoriesList(),


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

