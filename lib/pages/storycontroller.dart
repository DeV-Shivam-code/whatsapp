import 'package:flutter/material.dart';

class StoryController with ChangeNotifier {
  int _currentIndex = 0;
  bool _isPlaying = false;

  int get currentIndex => _currentIndex;
  bool get isPlaying => _isPlaying;

  void play() {
    _isPlaying = true;
    notifyListeners();
  }

  void pause() {
    _isPlaying = false;
    notifyListeners();
  }

  void next() {
    _currentIndex++;
    notifyListeners();
  }

  void previous() {
    _currentIndex--;
    notifyListeners();
  }
}