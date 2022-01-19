import 'package:flutter/foundation.dart';

class AppControllerProviderModel with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void updateTabsIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

}