import 'package:flutter/material.dart';

class PageViewIndexProvider extends ChangeNotifier {
  int? _pageViewindex = 0;

  final _pageList = [1];

  int? get pageViewindex => _pageViewindex;

  List get pageList => _pageList;

  void updatePageIndex(int newindex) {
    debugPrint('save page index $newindex');

    _pageViewindex = newindex;
    if (!pageList.contains(_pageViewindex)) {
      pageList.add(_pageViewindex);
      debugPrint('save List Track  $pageList');
    }
    notifyListeners();
  }

  void removeLastIndex() {
    pageList.removeLast();
    notifyListeners();
  }
}
