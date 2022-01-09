import 'package:flutter/foundation.dart';

import '/constants/assets_path_constants.dart';

// todo this provider model for image slider in product overview screen

class ProductOverViewScreenSliderProviderModel with ChangeNotifier{
  // todo for current index
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  // todo this list for image slider
  final List<String> imageList = <String>[
    AssetsPathConstants.SLIDE_ONE_ASSETS,
    AssetsPathConstants.SLIDE_TWO_ASSETS,
    AssetsPathConstants.SLIDE_THREE_ASSETS,
    AssetsPathConstants.SLIDE_FOUR_ASSETS,
  ];

  // todo update image slider index
  void updateCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

}