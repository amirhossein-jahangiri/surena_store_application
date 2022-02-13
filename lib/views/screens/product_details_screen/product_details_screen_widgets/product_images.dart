import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

// todo display product images in details screen widget

class ProductImages extends StatelessWidget {
  final String? imageUrl;
  const ProductImages({this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      height: 30.h,
      fit: BoxFit.contain,
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
          child: CircularProgressIndicator(
            value: progress.progress,
          ),
        );
      },
    );
  }
}
