import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

import '/modules/provider_models/product_overview_screen_slider_provider_model.dart';

// todo this widget for image slider in product overview screen

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageSlider = context.watch<ProductOverViewScreenSliderProviderModel>();
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
      ),
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: imageSlider.imageList.length,

            itemBuilder: (context, index, realIndex) => CachedNetworkImage(
              imageUrl: imageSlider.imageList[index],
              fit: BoxFit.fill,
              progressIndicatorBuilder: (context, url, progress) {
                return const Center(child: CircularProgressIndicator());
              },
            ),

            options: CarouselOptions(
              initialPage: imageSlider.currentIndex,
              aspectRatio: 4 / 2,
              autoPlay: false,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              height: 25.h,
              onPageChanged: (index, reason) {
                imageSlider.updateCurrentIndex(index);
              },
            ),
          ),

          // todo for indicator
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageSlider.imageList.asMap().entries.map((thisone) => Container(
                  margin: const EdgeInsets.all(5),
                  height: 2.h,
                  width: 3.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: thisone.key == imageSlider.currentIndex
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onPrimary,
                  ),
                )).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
